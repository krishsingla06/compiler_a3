#include "mips_generator.h"
#include "tac.h"
#include <iostream>
#include <iomanip>
#include <algorithm>

// Extern declaration to access helper function from parser.y
extern "C" int get_variable_offset(const char* var_name);
int get_function_stack_frame_size(const string& mangledName);
int get_function_param_count(const string& mangledName);
string get_function_param_name(const string& mangledName, int param_index);
/*
 * MIPS Stack Frame Layout:
 * 
 *   Higher Addresses
 *   ┌─────────────────────────┐
 *   │  Param 3, 4, 5...       │  +20($fp), +24($fp), ...  (if >4 params)
 *   ├─────────────────────────┤
 *   │  Param 2                │  +16($fp)
 *   ├─────────────────────────┤
 *   │  Param 1                │  +12($fp)
 *   ├─────────────────────────┤
 *   │  Param  0               │  +8($fp)
 *   ├─────────────────────────┤
 *   │  Return Address ($ra)   │  +4($fp)
 *   ├─────────────────────────┤
 *   │  Old Frame Pointer      │   0($fp)  ← $fp points here
 *   ├═════════════════════════┤
 *   │  Local Variable 1       │  -4($fp)
 *   ├─────────────────────────┤
 *   │  Temp #t1               │  -8($fp)
 *   ├─────────────────────────┤
 *   │  Local Variable 2       │  -12($fp)
 *   ├─────────────────────────┤
 *   │  Temp #t2               │  -16($fp)
 *   └─────────────────────────┘  ← $sp
 *   Lower Addresses
 * 
 * Notes:
 * - Parameters 1-4 are passed in $a0-$a3
 * - Parameters 5+ are allocated space on stack at positive offsets from $fp
 * - All parameters have stack space allocated (even if passed in registers)
 * - Locals and temps are interleaved at negative offsets from $fp
 * - Frame pointer ($fp) points to the saved old $fp location
 */

// NOTE: This is a stub implementation that outputs MIPS-style comments
// The actual implementation requires access to TypeInfo and SymbolEntry
// structures which are defined in parser.y
// 
// TODO: Fix the type visibility issue to enable proper MIPS generation

// Register Allocator Implementation

string MIPSRegisterAllocator::allocate_temp_reg() {
    // Try to allocate from $t0 to $t9
    for (int i = 0; i <= 9; i++) {
        string reg = "$t" + to_string(i);
        if (allocated_temp_regs.find(reg) == allocated_temp_regs.end()) {
            allocated_temp_regs.insert(reg);
            return reg;
        }
    }
    
    // All temp registers are in use - select a victim using round-robin
    static int next_victim = 0;
    string victim_reg = "$t" + to_string(next_victim);
    next_victim = (next_victim + 1) % 10;  // Round-robin through $t0-$t9
    
    return victim_reg;  // Caller must spill this register before use
}

string MIPSRegisterAllocator::allocate_float_reg() {
    // Try to allocate from $f0 to $f31
    for (int i = 0; i <= 31; i++) {
        if (allocated_float_regs.find(i) == allocated_float_regs.end()) {
            allocated_float_regs.insert(i);
            return "$f" + to_string(i);
        }
    }
    
    // All float registers are in use, return $f0
    return "$f0";
}

void MIPSRegisterAllocator::free_reg(const string& reg) {
    // Remove from allocated sets
    allocated_temp_regs.erase(reg);
    allocated_saved_regs.erase(reg);
    
    // For float registers, extract the number
    if (reg.length() > 2 && reg[0] == '$' && reg[1] == 'f') {
        int reg_num = stoi(reg.substr(2));
        allocated_float_regs.erase(reg_num);
    }
    
    // Remove from variable mapping
    for (auto it = var_to_reg.begin(); it != var_to_reg.end(); ) {
        if (it->second == reg) {
            it = var_to_reg.erase(it);
        } else {
            ++it;
        }
    }
}

string MIPSRegisterAllocator::get_reg_for_var(const string& var) {
    // Check if variable already has a register allocated
    if (var_to_reg.find(var) != var_to_reg.end()) {
        return var_to_reg[var];
    }
    
    // Allocate a new temp register
    string reg = allocate_temp_reg();
    var_to_reg[var] = reg;
    return reg;
}

void MIPSRegisterAllocator::mark_dirty(const string& reg) {
    dirty_regs.insert(reg);
}

void MIPSRegisterAllocator::clear_dirty(const string& reg) {
    dirty_regs.erase(reg);
}

bool MIPSRegisterAllocator::is_dirty(const string& reg) {
    return dirty_regs.find(reg) != dirty_regs.end();
}

set<string> MIPSRegisterAllocator::get_dirty_regs() {
    return dirty_regs;
}

void MIPSRegisterAllocator::clear_all() {
    allocated_temp_regs.clear();
    allocated_saved_regs.clear();
    allocated_float_regs.clear();
    var_to_reg.clear();
    dirty_regs.clear();
}

bool MIPSRegisterAllocator::is_reg_allocated(const string& reg) {
    return allocated_temp_regs.find(reg) != allocated_temp_regs.end();
}

// MIPS Generator Implementation

MIPSGenerator::MIPSGenerator(ostream& out, ostream* clean_out) 
    : output(out), clean_output(clean_out), current_block_id(0), next_string_id(0) {
}

void MIPSGenerator::analyze_basic_blocks(const vector<TACInstruction*>& tac_instructions) {
    emit_comment("======================================");
    emit_comment("  Basic Block Analysis");
    emit_comment("======================================");
    
    basic_blocks.clear();
    instr_to_block.clear();
    
    set<int> leaders;  // Instruction indices that start a basic block
    set<string> jump_targets;  // Labels that are actually targeted by jumps
    
    // First pass: collect all jump targets
    for (size_t i = 0; i < tac_instructions.size(); i++) {
        TACInstruction* instr = tac_instructions[i];
        
        // For conditional jumps (flag == 2), result is the target label
        if (instr->flag == 2 && instr->result && instr->result->type == TAC_OPERAND_LABEL) {
            jump_targets.insert(instr->result->value);
        }
        
        // For unconditional jumps (flag == 1), result is the target label (NOT arg1!)
        if (instr->flag == 1 && instr->result && instr->result->type == TAC_OPERAND_LABEL) {
            jump_targets.insert(instr->result->value);
        }
    }
    
    // Second pass: identify leaders
    leaders.insert(0); // First instruction is always a leader
    
    for (size_t i = 0; i < tac_instructions.size(); i++) {
        TACInstruction* instr = tac_instructions[i];
        
        // An instruction is a leader if it's the target of a jump
        if (instr->label && instr->label->type == TAC_OPERAND_LABEL) {
            string label_name = instr->label->value;
            if (jump_targets.find(label_name) != jump_targets.end()) {
                leaders.insert(i);
            }
        }
        
        // Instruction after a jump/branch/return is a leader
        if (instr->flag == 1 || instr->flag == 2 || 
            instr->op.type == TAC_OPERATOR_RETURN ||
            instr->op.type == TAC_OPERATOR_FUNC_END) {
            if (i + 1 < tac_instructions.size()) {
                leaders.insert(i + 1);
            }
        }
        
        // Function begin is a leader
        if (instr->op.type == TAC_OPERATOR_FUNC_BEGIN) {
            leaders.insert(i);
        }
    }
    
    // Create basic blocks from leaders
    vector<int> leader_list(leaders.begin(), leaders.end());
    sort(leader_list.begin(), leader_list.end());
    
    for (size_t i = 0; i < leader_list.size(); i++) {
        BasicBlock block;
        block.id = i + 1;  // B1, B2, ...
        block.start_index = leader_list[i];
        
        if (i + 1 < leader_list.size()) {
            block.end_index = leader_list[i + 1] - 1;
        } else {
            block.end_index = tac_instructions.size() - 1;
        }
        
        // Check how block ends
        TACInstruction* last_instr = tac_instructions[block.end_index];
        if (last_instr->flag == 1 || last_instr->flag == 2) {
            block.ends_with_jump = true;
        }
        if (last_instr->op.type == TAC_OPERATOR_RETURN ||
            last_instr->op.type == TAC_OPERATOR_FUNC_END) {
            block.ends_with_return = true;
        }
        
        // Map each instruction to its block
        for (int idx = block.start_index; idx <= block.end_index; idx++) {
            instr_to_block[idx] = block.id;
        }
        
        basic_blocks.push_back(block);
        
        emit_comment("Block B" + to_string(block.id) + ": i" + 
                     to_string(block.start_index) + "-i" + to_string(block.end_index));
    }
    
    output << "\n";
    if (clean_output) *clean_output << "\n";
}

void MIPSGenerator::clear_all_registers() {
    // Clear all temporary registers and their descriptors
    for (int i = 0; i <= 9; i++) {
        string reg = "$t" + to_string(i);
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        for (const string& var : vars) {
            storage_desc.remove_location(var, reg);
        }
        reg_desc.clear_reg(reg);
    }
    // Clear argument registers
    for (int i = 0; i <= 3; i++) {
        string reg = "$a" + to_string(i);
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        for (const string& var : vars) {
            storage_desc.remove_location(var, reg);
        }
        reg_desc.clear_reg(reg);
    }
    reg_allocator.clear_all();
}

void MIPSGenerator::emit_block_label(int block_id, int start_idx, int end_idx) {
    string block_label = "B" + to_string(block_id) + "_i" + 
                         to_string(start_idx) + "_i" + to_string(end_idx);
    emit_comment("=== " + block_label + " ===");
}

void MIPSGenerator::generate(const vector<TACInstruction*>& tac_instructions) {
    emit_comment("======================================");
    emit_comment("  MIPS Assembly Code Generation");
    emit_comment("======================================");
    output << "\n";
    if (clean_output) *clean_output << "\n";
    
    emit_comment("Total TAC instructions: " + to_string(tac_instructions.size()));
    output << "\n";
    if (clean_output) *clean_output << "\n";
    
    // Collect strings and constants for data section
    collect_data_section_items(tac_instructions);
    
    // Analyze basic blocks
    analyze_basic_blocks(tac_instructions);
    
    // Data section
    generate_data_section();
    
    // Text section
    output << ".text\n";
    if (clean_output) *clean_output << ".text\n";
    output << ".globl main\n";
    if (clean_output) *clean_output << ".globl main\n";
    output << "\n";
    if (clean_output) *clean_output << "\n";
    
    // Process each basic block
    for (const BasicBlock& block : basic_blocks) {
        emit_comment("======================================");
        emit_block_label(block.id, block.start_index, block.end_index);
        emit_comment("======================================");
        
        // Clear all registers at the start of each basic block
        clear_all_registers();
        emit_comment("Registers cleared at block start");
        
        // Process instructions in this basic block
        for (int i = block.start_index; i <= block.end_index; i++) {
            TACInstruction* instr = tac_instructions[i];
            
            // Emit TAC as comment for debugging
            emit_comment("TAC " + to_string(i) + ": " + get_TAC_instruction_string(instr));
            
            // Emit label if this instruction has one
            if (instr->label && instr->label->type == TAC_OPERAND_LABEL) {
                emit_label("I" + instr->label->value);
            }
            
            // Debug: Print current descriptor state
            print_descriptors();
            
            // If this is the last instruction in the block and it's a jump/return,
            // spill all dirty registers BEFORE translating it
            bool is_last_instr = (i == block.end_index);
            bool is_control_flow = (instr->flag == 1 || instr->flag == 2 || 
                                   instr->op.type == TAC_OPERATOR_RETURN);
            
            if (is_last_instr && is_control_flow) {
                emit_comment("Spilling before control flow instruction");
                spill_all_dirty();
            }
            
            // Translate to MIPS
            translate_instruction(instr);
            
            output << "\n";
            if (clean_output) *clean_output << "\n";
        }
        
        // Spill any remaining dirty registers at the end of the block
        // (for blocks that don't end with control flow)
        if (!block.ends_with_jump && !block.ends_with_return) {
            emit_comment("End of block B" + to_string(block.id) + " - spilling all registers");
            spill_all_dirty();
        }
        
        output << "\n";
        if (clean_output) *clean_output << "\n";
    }
    
    emit_comment("End of code");
}

void MIPSGenerator::collect_data_section_items(const vector<TACInstruction*>& tac_instructions) {
    emit_comment("======================================");
    emit_comment("  Collecting Data Section Items");
    emit_comment("======================================");
    
    // Scan through all TAC instructions to find string literals
    for (const auto* instr : tac_instructions) {
        if (!instr) continue;
        
        // Check if any operand is a string literal
        if (instr->result && instr->result->type == TAC_OPERAND_STRING) {
            add_string_literal(instr->result->value);
        }
        if (instr->arg1 && instr->arg1->type == TAC_OPERAND_STRING) {
            add_string_literal(instr->arg1->value);
        }
        if (instr->arg2 && instr->arg2->type == TAC_OPERAND_STRING) {
            add_string_literal(instr->arg2->value);
        }
    }
    
    emit_comment("Found " + to_string(string_literals.size()) + " string literals");
    output << "\n";
    if (clean_output) *clean_output << "\n";
}

string MIPSGenerator::add_string_literal(const string& content) {
    // Check if this string already exists
    for (const auto& pair : string_literals) {
        if (pair.first == content) {
            return pair.second;  // Return existing label
        }
    }
    
    // Create new label for this string
    string label = "str_" + to_string(next_string_id++);
    string_literals[content] = label;
    
    emit_comment("Added string literal: " + label + " = \"" + content + "\"");
    
    return label;
}

void MIPSGenerator::generate_data_section() {
    output << ".data\n";
    if (clean_output) *clean_output << ".data\n";
    
    emit_comment("String Literals");
    
    // Emit all string literals
    for (const auto& pair : string_literals) {
        string content = pair.first;
        const string& label = pair.second;
        
        // Strip surrounding quotes if present (parser includes them)
        if (content.length() >= 2 && content[0] == '"' && content[content.length()-1] == '"') {
            content = content.substr(1, content.length() - 2);
        }
        
        // Emit label and string
        output << label << ": .asciiz \"" << content << "\"\n";
        if (clean_output) *clean_output << label << ": .asciiz \"" << content << "\"\n";
    }
    
    if (string_literals.empty()) {
        emit_comment("(no string literals)");
    }
    
    output << "\n";
    if (clean_output) *clean_output << "\n";
}

void MIPSGenerator::generate_text_section(const vector<TACInstruction*>& tac_instructions) {
    // Stub
}

void MIPSGenerator::generate_function_prologue(const string& func_name) {
    emit_comment("=== Function Prologue for " + func_name + " ===");
    
    // Calculate frame size (locals + temps)
    int frame_size = calculate_stack_frame_size(func_name);
    
    emit_comment("Frame size: " + to_string(frame_size) + " bytes");
    
    // Step 1: Allocate space for entire frame (locals + temps + $ra + old $fp)
    // Total space = frame_size + 8 (8 bytes for $ra and old $fp)
    int total_frame = frame_size;
    emit("addiu $sp, $sp, -" + to_string(total_frame));
    emit_comment("Allocate " + to_string(total_frame) + " bytes (8 for $ra+$fp, " + 
                 to_string(frame_size) + " for locals/temps)");
    
    // Step 2: Save return address at offset (frame_size + 4) from new $sp
    emit("sw $ra, " + to_string(frame_size - 4) + "($sp)");
    emit_comment("Save return address at " + to_string(frame_size + 4) + "($sp)");
    
    // Step 3: Save old frame pointer at offset (frame_size) from new $sp
    emit("sw $fp, " + to_string(frame_size - 8) + "($sp)");
    emit_comment("Save old frame pointer at " + to_string(frame_size) + "($sp)");
    
    // Step 4: Set new frame pointer
    // $fp should point to where we saved old $fp
    emit("addiu $fp, $sp, " + to_string(frame_size - 8));
    emit_comment("Set new frame pointer (points to saved old $fp)");
    
    emit_comment("=== End of Prologue ===");
    emit_comment("Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp");
    output << "\n";
    if (clean_output) *clean_output << "\n";
}

void MIPSGenerator::generate_function_epilogue(const string& func_name) {
    emit_comment("=== Function Epilogue for " + func_name + " ===");
    
    int frame_size = calculate_stack_frame_size(func_name);
    
    // Step 1: Move $sp back to where $fp is (where old $fp is saved)
    emit("move $sp, $fp");
    emit_comment("Move $sp to $fp (where old $fp is saved)");

    // Step 2: Restore return address from 4($fp)
    emit("lw $ra, 4($fp)");
    emit_comment("Restore return address");

    // Step 3: Restore old frame pointer from 0($fp)
    emit("lw $fp, 0($fp)");
    emit_comment("Restore old frame pointer");
    
    // Step 4: Deallocate the saved $ra and $fp (8 bytes)
    // Since we moved $sp to $fp, we only need to skip past the saved $ra and $fp
    emit("addiu $sp, $sp, 8");
    emit_comment("Deallocate saved $ra and $fp (8 bytes)");
    
    // Step 5: Return to caller
    emit("jr $ra");
    emit_comment("Return to caller");
    
    emit_comment("=== End of Epilogue ===");
}

int MIPSGenerator::calculate_stack_frame_size(const string& func_name) {
    // Use external function to get stack frame size for locals and temps
    int frame_size = get_function_stack_frame_size(func_name);
    
    // Add space for saving caller-saved registers ($t0-$t9 = 10 registers)
    // Each register needs 4 bytes
    int register_save_space = 10 * 4;  // 40 bytes for $t0-$t9
    
    // Also add space for $ra (4 bytes) and old $fp (4 bytes)
    int control_save_space = 0;  // $ra + old $fp // get_function_stack_frame_size already accounts for these
    
    // Total frame size
    int total_frame_size = frame_size + register_save_space + control_save_space;
    
    
    return total_frame_size;
}

void MIPSGenerator::initialize_parameter_descriptors(const string& func_name, int num_params) {
    emit_comment("=== Initialize Parameter Descriptors ===");
    
    // For each parameter:
    // 1. First 4 params: register ($a0-$a3) AND memory (+8($fp), +12($fp), +16($fp), +20($fp))
    // 2. Params 5+: only memory (+24($fp), +28($fp), ...)
    
    for (int i = 0; i < num_params; i++) {
        string param_name = get_function_param_name(func_name, i);
        
        if (param_name.empty()) {
            emit_comment("WARNING: Could not get parameter name for param " + to_string(i));
            continue;
        }
        
        // Mangle the parameter name to match TAC format: v_<name>_<func>_s2
        string mangled_param = "v_" + param_name + "_" + func_name + "_s2";
        
        int stack_offset = 8 + (i * 4);  // +8($fp), +12($fp), +16($fp), ...
        string memory_loc = "memory:" + to_string(stack_offset) + "($fp)";
        
        // Add memory location for ALL parameters
        storage_desc.add_location(mangled_param, memory_loc);
        emit_comment("DEBUG: Parameter " + to_string(i) + " (" + mangled_param + ") at " + to_string(stack_offset) + "($fp)");
        
        // For first 4 parameters, also add register location
        if (i < 4) {
            string arg_reg = "$a" + to_string(i);
            
            // Add to register descriptor
            reg_desc.add_var_to_reg(arg_reg, mangled_param);
            
            // Add to storage descriptor
            storage_desc.add_location(mangled_param, arg_reg);
            
            emit_comment("DEBUG: Parameter " + to_string(i) + " (" + mangled_param + ") also in " + arg_reg);
        }
    }
    
    emit_comment("=== End Parameter Initialization ===");
    output << "\n";
    if (clean_output) *clean_output << "\n";
}

void MIPSGenerator::translate_instruction(TACInstruction* instr) {
    if (!instr) return;
    
    // Note: Labels and basic block boundaries are now handled at a higher level
    // in the generate() function. This function just translates individual instructions.
    
    // Handle different operation types based on flag and op
    // IMPORTANT: Check flags FIRST before checking op types!
    if (instr->flag == 1) {
        // Unconditional jump
        translate_jump(instr);
    }
    else if (instr->flag == 2) {
        // Conditional jump: if arg1 op arg2 goto result
        translate_comparison(instr);
    }
    else if (instr->flag == 0 && instr->op.type == TAC_OPERATOR_NOP) {
        // Assignment: result = arg1
        translate_assignment(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_ADD ||
             instr->op.type == TAC_OPERATOR_SUB ||
             instr->op.type == TAC_OPERATOR_MUL ||
             instr->op.type == TAC_OPERATOR_DIV ||
             instr->op.type == TAC_OPERATOR_MOD) {
        translate_arithmetic(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_EQ ||
             instr->op.type == TAC_OPERATOR_NE ||
             instr->op.type == TAC_OPERATOR_LT ||
             instr->op.type == TAC_OPERATOR_GT ||
             instr->op.type == TAC_OPERATOR_LE ||
             instr->op.type == TAC_OPERATOR_GE) {
        translate_comparison(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_BIT_AND ||
             instr->op.type == TAC_OPERATOR_BIT_OR ||
             instr->op.type == TAC_OPERATOR_BIT_XOR ||
             instr->op.type == TAC_OPERATOR_LEFT_SHIFT ||
             instr->op.type == TAC_OPERATOR_RIGHT_SHIFT ||
             instr->op.type == TAC_OPERATOR_BIT_NOT) {
        translate_bitwise(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_ADDR_OF) {
        // Address-of operator: result = &arg1
        translate_address_of(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_DEREF) {
        // Dereference operator: result = *arg1
        translate_dereference(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_STORE_INDIRECT) {
        // Store through pointer: *(arg1) = arg2
        translate_store_indirect(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_FUNC_BEGIN) {
        emit_label(instr->result->value);
        emit_comment("Function: " + instr->result->value);
        current_function = instr->result->value;
        
        // Generate function prologue
        generate_function_prologue(current_function);
        
        // Initialize parameter descriptors (register and memory locations)
        int num_params = get_function_param_count(current_function);
        if (num_params > 0) {
            initialize_parameter_descriptors(current_function, num_params);
        }
    }
    else if (instr->op.type == TAC_OPERATOR_PARAM) {
        // Parameter setup for function call
        translate_param(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_CALL) {
        // Function call
        translate_call(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_RETURN) {
        // Return
        translate_return(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_FUNC_END) {
        // Basic block boundary - generate function epilogue
        generate_function_epilogue(current_function);
        emit_comment("End of function: " + current_function);
    }
    else {
        // Stub for other operations
        emit_comment("TODO: Implement TAC op type " + to_string(instr->op.type));
    }
}

void MIPSGenerator::translate_assignment(TACInstruction* instr) {
    // Assignment: result = arg1 (op is NULL, flag=0)
    
    if (!instr->result || !instr->arg1) return;
    
    string dest = instr->result->value;
    string src = instr->arg1->value;
    
    emit_comment("Assignment: " + dest + " = " + src);
    
    // Check if source is a string literal
    if (instr->arg1->type == TAC_OPERAND_STRING) {
        // Load address of string literal
        string str_label = add_string_literal(src);  // Get or create label
        string reg = allocate_register_with_spilling();
        
        emit("la " + reg + ", " + str_label);
        emit_comment("DEBUG: Loaded address of string \"" + src + "\" into " + reg);
        
        // Update descriptors
        reg_desc.clear_reg(reg);
        reg_desc.add_var_to_reg(reg, dest);
        storage_desc.set_location(dest, reg);
        reg_allocator.mark_dirty(reg);
        
        emit_comment("DEBUG: " + dest + " = &" + str_label + " in " + reg + " (dirty)");
        return;
    }
    
    // Check if source is a constant (either marked as constant or is a numeric value)
    bool is_constant = (instr->arg1->type == TAC_OPERAND_CONSTANT);
    
    // Also check if it's a numeric literal (workaround for parser not setting CONSTANT type)
    if (!is_constant && !src.empty()) {
        bool is_numeric = true;
        size_t start = 0;
        if (src[0] == '-' || src[0] == '+') start = 1;  // Handle sign
        for (size_t i = start; i < src.length(); i++) {
            if (!isdigit(src[i])) {
                is_numeric = false;
                break;
            }
        }
        if (is_numeric && src.length() > start) {
            is_constant = true;
        }
    }
    
    if (is_constant) {
        // Load immediate into register
        string reg = allocate_register_with_spilling();
        emit("li " + reg + ", " + src);
        
        // Check if dest was previously in another register - if so, remove it from there
        if (storage_desc.is_in_register(dest)) {
            string old_reg = storage_desc.get_register(dest);
            if (old_reg != reg) {
                // Remove dest from the old register descriptor
                reg_desc.remove_var_from_reg(old_reg, dest);
                emit_comment("DEBUG: Removed " + dest + " from old register " + old_reg);
            }
        }
        
        // Update descriptors - keep in register ONLY (not in memory yet)
        reg_desc.clear_reg(reg);
        reg_desc.add_var_to_reg(reg, dest);
        storage_desc.set_location(dest, reg);
        
        // Mark register as dirty since it has new value
        reg_allocator.mark_dirty(reg);
        emit_comment("DEBUG: " + dest + " = constant " + src + " loaded in " + reg + " (dirty)");
        
        return;
    }
    
    // Source is a variable - check if it's already in a register
    if (storage_desc.is_in_register(src)) {
        // Source is in a register
        string src_reg = storage_desc.get_register(src);
        emit_comment("DEBUG: " + src + " already in " + src_reg);
        
        // Check if dest is already in some register - if so, we need to invalidate that register
        if (storage_desc.is_in_register(dest)) {
            string old_dest_reg = storage_desc.get_register(dest);
            
            // If dest is in a different register, we need to handle it
            if (old_dest_reg != src_reg) {
                // Get all variables in the old dest register
                set<string> vars_in_old_reg = reg_desc.get_vars_in_reg(old_dest_reg);
                
                emit_comment("DEBUG: " + dest + " was in " + old_dest_reg + ", spilling all variables in that register");
                
                // Spill all variables in that register if dirty
                if (reg_allocator.is_dirty(old_dest_reg)) {
                    for (const string& var : vars_in_old_reg) {
                        int offset = get_offset(var);
                        emit("sw " + old_dest_reg + ", " + to_string(offset) + "($fp)");
                        emit_comment("DEBUG: Spilled " + var + " from " + old_dest_reg + " to memory at " + to_string(offset) + "($fp)");
                        storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
                    }
                }
                
                // Remove all variables from the old register's descriptors
                for (const string& var : vars_in_old_reg) {
                    storage_desc.remove_location(var, old_dest_reg);
                }
                reg_desc.clear_reg(old_dest_reg);
            }
        }
        
        // Now assign dest to src_reg
        reg_desc.add_var_to_reg(src_reg, dest);
        storage_desc.set_location(dest, src_reg);  // Use set_location to replace old location
        
        // Mark register as dirty if dest is different from src
        if (dest != src) {
            reg_allocator.mark_dirty(src_reg);
            emit_comment("DEBUG: " + dest + " now also in " + src_reg + " (dirty)");
        }
    } else {
        // Source is not in register - need to load it first
        string src_reg = ensure_in_register(src);
        
        // Check if dest is already in some register - if so, invalidate that register
        if (storage_desc.is_in_register(dest)) {
            string old_dest_reg = storage_desc.get_register(dest);
            
            if (old_dest_reg != src_reg) {
                // Get all variables in the old dest register
                set<string> vars_in_old_reg = reg_desc.get_vars_in_reg(old_dest_reg);
                
                emit_comment("DEBUG: " + dest + " was in " + old_dest_reg + ", spilling all variables in that register");
                
                // Spill all variables in that register if dirty
                if (reg_allocator.is_dirty(old_dest_reg)) {
                    for (const string& var : vars_in_old_reg) {
                        int offset = get_offset(var);
                        emit("sw " + old_dest_reg + ", " + to_string(offset) + "($fp)");
                        emit_comment("DEBUG: Spilled " + var + " from " + old_dest_reg + " to memory at " + to_string(offset) + "($fp)");
                        storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
                    }
                }
                
                // Remove all variables from the old register's descriptors
                for (const string& var : vars_in_old_reg) {
                    storage_desc.remove_location(var, old_dest_reg);
                }
                reg_desc.clear_reg(old_dest_reg);
            }
        }
        
        // Update descriptors
        reg_desc.add_var_to_reg(src_reg, dest);
        storage_desc.set_location(dest, src_reg);  // Use set_location to replace old location
        reg_allocator.mark_dirty(src_reg);
        
        emit_comment("DEBUG: " + dest + " loaded in " + src_reg + " (dirty)");
    }
}

void MIPSGenerator::translate_arithmetic(TACInstruction* instr) {
    // result = arg1 op arg2
    
    string dest = instr->result->value;
    string src1 = instr->arg1->value;
    string src2 = instr->arg2->value;
    
    string op_name;
    switch (instr->op.type) {
        case TAC_OPERATOR_ADD: op_name = "add"; break;
        case TAC_OPERATOR_SUB: op_name = "sub"; break;
        case TAC_OPERATOR_MUL: op_name = "mul"; break;
        case TAC_OPERATOR_DIV: op_name = "div"; break;
        case TAC_OPERATOR_MOD: op_name = "rem"; break;
        default: op_name = "unknown"; break;
    }
    
    emit_comment(dest + " = " + src1 + " " + op_name + " " + src2);
    
    // Get operands into registers using the smart helper
    string reg1 = load_operand_to_register(instr->arg1);
    emit_comment("DEBUG: " + src1 + " in " + reg1);
    
    string reg2 = load_operand_to_register(instr->arg2);
    emit_comment("DEBUG: " + src2 + " in " + reg2);
    
    // Allocate destination register
    string dest_reg = allocate_register_with_spilling();
    
    // Generate operation
    emit(op_name + " " + dest_reg + ", " + reg1 + ", " + reg2);
    
    // Update descriptors - keep result in register ONLY
    reg_desc.add_var_to_reg(dest_reg, dest);
    storage_desc.set_location(dest, dest_reg);
    reg_allocator.mark_dirty(dest_reg);
    
    emit_comment("DEBUG: " + dest + " = result in " + dest_reg + " (dirty)");
}

void MIPSGenerator::translate_comparison(TACInstruction* instr) {
    // Two cases:
    // 1. flag == 2: if arg1 op arg2 goto result (conditional branch)
    // 2. flag == 0: result = arg1 op arg2 (comparison result stored in variable)
    
    string src1 = instr->arg1->value;
    string src2 = instr->arg2->value;

    
    if (instr->flag == 2) {
        // Conditional branch: if arg1 op arg2 goto label
        string target_label = instr->result->value;
        
        string op_name;
        string branch_instr;

        
        switch (instr->op.type) {
            case TAC_OPERATOR_EQ:
                op_name = "==";
                branch_instr = "beq";  // branch if equal
                break;
            case TAC_OPERATOR_NE:
                op_name = "!=";
                branch_instr = "bne";  // branch if not equal
                break;
            case TAC_OPERATOR_LT:
                op_name = "<";
                branch_instr = "blt";  // branch if less than
                break;
            case TAC_OPERATOR_GT:
                op_name = ">";
                branch_instr = "bgt";  // branch if greater than
                break;
            case TAC_OPERATOR_LE:
                op_name = "<=";
                branch_instr = "ble";  // branch if less than or equal
                break;
            case TAC_OPERATOR_GE:
                op_name = ">=";
                branch_instr = "bge";  // branch if greater than or equal
                break;
            default:
                op_name = "??";
                branch_instr = "beq";
                break;
        }

        // if src2 is empty then it is a unary comparison (e.g., if arg1 != 0)

        if(src2.empty()) {
            // Unary comparison against zero
            emit_comment("if " + src1 + " " + op_name + " 0 goto I" + target_label);
            
            // Get operand into register
            string reg1;
            
            if (instr->arg1->type == TAC_OPERAND_CONSTANT) {
                reg1 = allocate_register_with_spilling();
                emit("li " + reg1 + ", " + src1);
                emit_comment("DEBUG: Loaded constant " + src1 + " into " + reg1);
            } else {
                reg1 = ensure_in_register(src1);
                emit_comment("DEBUG: " + src1 + " in " + reg1);
            }
            
            // Emit branch instruction against zero
            if (instr->op.type == TAC_OPERATOR_NE) {
                emit("bne " + reg1 + ", $zero, I" + target_label);
            } else if (instr->op.type == TAC_OPERATOR_EQ) {
                emit("beq " + reg1 + ", $zero, I" + target_label);
            } else {
                // For other comparisons, treat as not equal to zero
                emit("bne " + reg1 + ", $zero, I" + target_label);
            }
            emit_comment("Branch to I" + target_label + " if condition true");
            return;
        }
        
        emit_comment("if " + src1 + " " + op_name + " " + src2 + " goto I" + target_label);
        
        // Get operands into registers using smart helper
        string reg1 = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: " + src1 + " in " + reg1);
        
        string reg2 = load_operand_to_register(instr->arg2);
        emit_comment("DEBUG: " + src2 + " in " + reg2);
        
        // Emit branch instruction
        emit(branch_instr + " " + reg1 + ", " + reg2 + ", I" + target_label);
        emit_comment("Branch to I" + target_label + " if condition true");
        
    } else {
        // Comparison result stored in variable: result = arg1 op arg2
        string dest = instr->result->value;
        
        string op_name;
        string set_instr;
        
        switch (instr->op.type) {
            case TAC_OPERATOR_EQ:
                op_name = "==";
                set_instr = "seq";  // set if equal
                break;
            case TAC_OPERATOR_NE:
                op_name = "!=";
                set_instr = "sne";  // set if not equal
                break;
            case TAC_OPERATOR_LT:
                op_name = "<";
                set_instr = "slt";  // set if less than
                break;
            case TAC_OPERATOR_GT:
                op_name = ">";
                set_instr = "sgt";  // set if greater than
                break;
            case TAC_OPERATOR_LE:
                op_name = "<=";
                set_instr = "sle";  // set if less than or equal
                break;
            case TAC_OPERATOR_GE:
                op_name = ">=";
                set_instr = "sge";  // set if greater than or equal
                break;
            default:
                op_name = "??";
                set_instr = "seq";
                break;
        }
        
        emit_comment(dest + " = " + src1 + " " + op_name + " " + src2);
        
        // Get operands into registers using smart helper
        string reg1 = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: " + src1 + " in " + reg1);
        
        string reg2 = load_operand_to_register(instr->arg2);
        emit_comment("DEBUG: " + src2 + " in " + reg2);
        
        // Allocate destination register
        string dest_reg = allocate_register_with_spilling();
        
        // Generate comparison (result: 1 if true, 0 if false)
        emit(set_instr + " " + dest_reg + ", " + reg1 + ", " + reg2);
        
        // Update descriptors
        reg_desc.add_var_to_reg(dest_reg, dest);
        storage_desc.set_location(dest, dest_reg);
        reg_allocator.mark_dirty(dest_reg);
        
        emit_comment("DEBUG: " + dest + " = comparison result in " + dest_reg + " (dirty)");
    }
}

void MIPSGenerator::translate_bitwise(TACInstruction* instr) {
    // Bitwise operations: result = arg1 op arg2
    // Handles: &, |, ^, <<, >>, ~ (unary)
    
    if (!instr->result) return;
    
    string dest = instr->result->value;
    
    // Check if it's unary bitwise NOT
    if (instr->op.type == TAC_OPERATOR_BIT_NOT) {
        // Unary: result = ~arg1
        if (!instr->arg1) return;
        
        string src = instr->arg1->value;
        emit_comment(dest + " = ~" + src);
        
        // Get source into register
        string src_reg;
        if (instr->arg1->type == TAC_OPERAND_CONSTANT) {
            src_reg = allocate_register_with_spilling();
            emit("li " + src_reg + ", " + src);
            emit_comment("DEBUG: Loaded constant " + src + " into " + src_reg);
        } else {
            src_reg = ensure_in_register(src);
            emit_comment("DEBUG: " + src + " in " + src_reg);
        }
        
        // Allocate destination register
        string dest_reg = allocate_register_with_spilling();
        
        // MIPS bitwise NOT: nor with $zero (since ~x = x NOR 0)
        emit("nor " + dest_reg + ", " + src_reg + ", $zero");
        
        // Update descriptors
        reg_desc.add_var_to_reg(dest_reg, dest);
        storage_desc.set_location(dest, dest_reg);
        reg_allocator.mark_dirty(dest_reg);
        
        emit_comment("DEBUG: " + dest + " in " + dest_reg + " (dirty)");
        return;
    }
    
    // Binary bitwise operations
    if (!instr->arg1 || !instr->arg2) return;
    
    string src1 = instr->arg1->value;
    string src2 = instr->arg2->value;
    
    string op_name;
    string mips_instr;
    
    switch (instr->op.type) {
        case TAC_OPERATOR_BIT_AND:
            op_name = "&";
            mips_instr = "and";
            break;
        case TAC_OPERATOR_BIT_OR:
            op_name = "|";
            mips_instr = "or";
            break;
        case TAC_OPERATOR_BIT_XOR:
            op_name = "^";
            mips_instr = "xor";
            break;
        case TAC_OPERATOR_LEFT_SHIFT:
            op_name = "<<";
            mips_instr = "sll";  // Shift left logical
            break;
        case TAC_OPERATOR_RIGHT_SHIFT:
            op_name = ">>";
            mips_instr = "srl";  // Shift right logical (unsigned)
            break;
        default:
            op_name = "??";
            mips_instr = "add";
            break;
    }
    
    emit_comment(dest + " = " + src1 + " " + op_name + " " + src2);
    
    // Get first operand into register using smart helper
    string reg1 = load_operand_to_register(instr->arg1);
    emit_comment("DEBUG: " + src1 + " in " + reg1);
    
    // Handle second operand
    // For shifts, if arg2 is constant, we can use immediate shift instructions
    if ((instr->op.type == TAC_OPERATOR_LEFT_SHIFT || 
         instr->op.type == TAC_OPERATOR_RIGHT_SHIFT) &&
        (instr->arg2->type == TAC_OPERAND_CONSTANT || isdigit(src2[0]))) {
        // Shift with immediate value
        string dest_reg = allocate_register_with_spilling();
        
        // sll/srl dest, src, shamt (shamt is immediate 0-31)
        emit(mips_instr + " " + dest_reg + ", " + reg1 + ", " + src2);
        emit_comment("DEBUG: Shift by constant " + src2);
        
        // Update descriptors
        reg_desc.add_var_to_reg(dest_reg, dest);
        storage_desc.set_location(dest, dest_reg);
        reg_allocator.mark_dirty(dest_reg);
        
        emit_comment("DEBUG: " + dest + " in " + dest_reg + " (dirty)");
        return;
    }
    
    // Get second operand into register using smart helper
    string reg2 = load_operand_to_register(instr->arg2);
    emit_comment("DEBUG: " + src2 + " in " + reg2);
    
    // Allocate destination register
    string dest_reg = allocate_register_with_spilling();
    
    // Generate instruction
    if (instr->op.type == TAC_OPERATOR_LEFT_SHIFT || 
        instr->op.type == TAC_OPERATOR_RIGHT_SHIFT) {
        // Variable shift: sllv/srlv (shift left/right logical variable)
        mips_instr = (instr->op.type == TAC_OPERATOR_LEFT_SHIFT) ? "sllv" : "srlv";
        emit(mips_instr + " " + dest_reg + ", " + reg1 + ", " + reg2);
        emit_comment("DEBUG: Variable shift");
    } else {
        // and, or, xor
        emit(mips_instr + " " + dest_reg + ", " + reg1 + ", " + reg2);
    }
    
    // Update descriptors
    reg_desc.add_var_to_reg(dest_reg, dest);
    storage_desc.set_location(dest, dest_reg);
    reg_allocator.mark_dirty(dest_reg);
    
    emit_comment("DEBUG: " + dest + " in " + dest_reg + " (dirty)");
}

void MIPSGenerator::translate_address_of(TACInstruction* instr) {
    // TAC: result = &arg1
    // MIPS: Get the address of arg1 (which is at offset($fp))
    
    string dest = instr->result->value;
    string var = instr->arg1->value;
    
    emit_comment(dest + " = &" + var);
    
    // Get the memory offset of the variable
    int offset = get_offset(var);
    
    // Allocate a register for the result
    string dest_reg = reg_allocator.allocate_temp_reg();
    
    // If register was already allocated, spill it first
    if (reg_allocator.is_reg_allocated(dest_reg)) {
        spill_register(dest_reg);
    }
    
    // Calculate address: dest_reg = $fp + offset
    if (offset == 0) {
        emit("move " + dest_reg + ", $fp");
        emit_comment("DEBUG: " + dest + " = address of " + var + " at $fp");
    } else if (offset > 0) {
        emit("addiu " + dest_reg + ", $fp, " + to_string(offset));
        emit_comment("DEBUG: " + dest + " = address of " + var + " at " + to_string(offset) + "($fp)");
    } else {
        emit("addiu " + dest_reg + ", $fp, " + to_string(offset));
        emit_comment("DEBUG: " + dest + " = address of " + var + " at " + to_string(offset) + "($fp)");
    }
    
    // Update descriptors: dest is now in dest_reg and is dirty
    reg_desc.add_var_to_reg(dest_reg, dest);
    storage_desc.set_location(dest, dest_reg);
    reg_allocator.mark_dirty(dest_reg);
    
    emit_comment("DEBUG: " + dest + " (pointer) in " + dest_reg + " (dirty)");
}

void MIPSGenerator::translate_dereference(TACInstruction* instr) {
    // TAC: result = *arg1
    // MIPS: Load value from memory address stored in arg1
    
    string dest = instr->result->value;
    string ptr = instr->arg1->value;
    
    emit_comment(dest + " = *" + ptr);
    
    // Get pointer value into a register
    string ptr_reg;
    if (storage_desc.is_in_register(ptr)) {
        ptr_reg = storage_desc.get_register(ptr);
        emit_comment("DEBUG: Pointer " + ptr + " already in " + ptr_reg);
    } else {
        // Load pointer from memory
        ptr_reg = reg_allocator.allocate_temp_reg();
        if (reg_allocator.is_reg_allocated(ptr_reg)) {
            spill_register(ptr_reg);
        }
        int offset = get_offset(ptr);
        emit("lw " + ptr_reg + ", " + to_string(offset) + "($fp)");
        emit_comment("DEBUG: Loaded pointer " + ptr + " from memory at " + to_string(offset) + "($fp)");
        
        // Update descriptors for pointer
        reg_desc.add_var_to_reg(ptr_reg, ptr);
        storage_desc.add_location(ptr, ptr_reg);
    }
    
    // Allocate register for dereferenced value
    string dest_reg = reg_allocator.allocate_temp_reg();
    if (reg_allocator.is_reg_allocated(dest_reg)) {
        spill_register(dest_reg);
    }
    
    // Load value from address in ptr_reg: dest_reg = *ptr_reg
    emit("lw " + dest_reg + ", 0(" + ptr_reg + ")");
    emit_comment("DEBUG: Dereferenced *" + ptr + " into " + dest_reg);
    
    // Update descriptors: dest is now in dest_reg and is dirty
    reg_desc.add_var_to_reg(dest_reg, dest);
    storage_desc.set_location(dest, dest_reg);
    reg_allocator.mark_dirty(dest_reg);
    
    emit_comment("DEBUG: " + dest + " = *" + ptr + " in " + dest_reg + " (dirty)");
}

void MIPSGenerator::translate_store_indirect(TACInstruction* instr) {
    // TAC: *(arg1) = arg2
    // MIPS: Store value (arg2) through pointer (arg1)
    
    string ptr = instr->result->value;      // FIXED: arg1 is the pointer
    string value = instr->arg1->value;    // FIXED: arg2 is the value
    
    emit_comment("*" + ptr + " = " + value);
    
    // Get pointer address into a register using smart helper
    string ptr_reg = load_operand_to_register(instr->result);
    emit_comment("DEBUG: Pointer " + ptr + " in " + ptr_reg);
    
    // Get value to store into a register using smart helper (handles constants, strings, variables)
    string value_reg = load_operand_to_register(instr->arg1);
    emit_comment("DEBUG: Value " + value + " in " + value_reg);
    
    // Store value through pointer: sw $value, 0($ptr)
    emit("sw " + value_reg + ", 0(" + ptr_reg + ")");
    emit_comment("DEBUG: Stored " + value + " through pointer " + ptr);
    
    // Note: We don't track what the pointer points to in our descriptors,
    // so we can't update descriptors for the target memory location
}

void MIPSGenerator::translate_jump(TACInstruction* instr) {
    // Unconditional jump: goto label
    if (instr->flag == 1) {
        string target_label = instr->result->value;
        emit_comment("Unconditional jump to I" + target_label);
        emit("j I" + target_label);
    }
}

void MIPSGenerator::translate_param(TACInstruction* instr) {
    // TAC: param <value>
    // Collect parameters in order (they come in reverse order in TAC)
    if (!instr->result) return;
    
    string param = instr->result->value;
    emit_comment("param " + param);
    
    // Add to pending params list (params come in reverse order in TAC)
    pending_params.push_back(param);
    emit_comment("DEBUG: Collected parameter #" + to_string(pending_params.size()) + ": " + param);
}

void MIPSGenerator::translate_call(TACInstruction* instr) {
    // TAC: result = call function_name, num_args
    if (!instr->arg1) return;
    
    string func_name = instr->arg1->value;
    int num_args = 0;
    if (instr->arg2) {
        num_args = stoi(instr->arg2->value);
    }
    
    emit_comment("Call " + func_name + " with " + to_string(num_args) + " arguments");
    
    // ===== CALLER-SAVE: Save all dirty $t0-$t9 registers before call =====
    emit_comment("=== Caller-Save: Spill dirty registers before call ===");
    vector<string> saved_regs;  // Track which registers we saved
    
    for (int i = 0; i <= 9; i++) {
        string reg = "$t" + to_string(i);
        
        // Check if this register is dirty (has been modified)
        if (reg_allocator.is_dirty(reg)) {
            // Get the variable(s) stored in this register
            set<string> vars = reg_desc.get_vars_in_reg(reg);
            
            if (!vars.empty()) {
                for (const string& var : vars) {
                    // Spill to memory using existing offset
                    int offset = get_offset(var);
                    emit("sw " + reg + ", " + to_string(offset) + "($fp)");
                    emit_comment("DEBUG: Saved " + var + " from " + reg + " to " + to_string(offset) + "($fp)");
                    
                    // Update storage descriptor: variable is now in memory with exact location
                    storage_desc.set_location(var, "memory:" + to_string(offset) + "($fp)");
                }
                saved_regs.push_back(reg);
            }
            
            // Clear dirty flag for this register
            reg_allocator.clear_dirty(reg);
        }
        
        // Clear the register descriptor completely (assume destroyed by call)
        reg_desc.clear_reg(reg);
    }
    
    emit_comment("=== End Caller-Save (saved " + to_string(saved_regs.size()) + " registers) ===");
    
    // Process parameters (they're in pending_params in reverse order)
    // Reverse them to get correct order: first param at index 0
    vector<string> params;
    for (int i = pending_params.size() - 1; i >= 0; i--) {
        params.push_back(pending_params[i]);
    }
    pending_params.clear();
    
    // Calculate space needed for parameters
    // We need space for ALL parameters (even first 4 that go in registers)
    // Each param needs 4 bytes, plus 8 bytes for $ra and old $fp of callee
    int param_space = (num_args > 0) ? (num_args * 4) : 0;
    
    // Allocate space for parameters on stack
    if (param_space > 0) {
        emit("addiu $sp, $sp, -" + to_string(param_space));
        emit_comment("DEBUG: Allocate " + to_string(param_space) + " bytes for " + to_string(num_args) + " parameters + $ra/$fp");
    }
    
    // Pass first 4 params in $a0-$a3 AND store on stack
    // Params 5+ only on stack
    for (int i = 0; i < num_args; i++) {
        string param = params[i];
        
        // Get parameter value into a register
        string param_reg;
        
        // Check if it's a constant
        bool is_constant = !param.empty() && (isdigit(param[0]) || param[0] == '-');
        
        if (is_constant) {
            param_reg = allocate_register_with_spilling();
            emit("li " + param_reg + ", " + param);
            emit_comment("DEBUG: Loaded constant param " + to_string(i) + " = " + param);
        } else {
            param_reg = ensure_in_register(param);
            emit_comment("DEBUG: Param " + to_string(i) + " (" + param + ") in " + param_reg);
        }
        
        // Store on stack at 8($sp), 12($sp), 16($sp), ... (after allocation)
        // These will become +8($fp), +12($fp), +16($fp) in the callee
        // The +8 accounts for $ra and old $fp that callee will save
        int stack_offset = 8 + (i * 4);
        emit("sw " + param_reg + ", " + to_string(stack_offset) + "($sp)");
        emit_comment("DEBUG: Stored param " + to_string(i) + " on stack at " + to_string(stack_offset) + "($sp)");
        
        // Also copy to $a0-$a3 for first 4 params
        if (i < 4) {
            string arg_reg = "$a" + to_string(i);
            if (param_reg != arg_reg) {
                emit("move " + arg_reg + ", " + param_reg);
                emit_comment("DEBUG: Copied param " + to_string(i) + " to " + arg_reg);
            }
        }
    }
    
    // Call the function
    emit("jal " + func_name);
    emit_comment("DEBUG: Called " + func_name);
    
    // Deallocate parameter space after call returns
    if (param_space > 0) {
        emit("addiu $sp, $sp, " + to_string(param_space));
        emit_comment("DEBUG: Deallocate " + to_string(param_space) + " bytes of parameter space");
    }
    
    // Get return value from $v0 (if there's a result)
    if (instr->result) {
        string dest = instr->result->value;
        string dest_reg = allocate_register_with_spilling();
        
        emit("move " + dest_reg + ", $v0");
        emit_comment("DEBUG: Return value from $v0 to " + dest_reg);
        
        // Update descriptors
        reg_desc.add_var_to_reg(dest_reg, dest);
        storage_desc.set_location(dest, dest_reg);
        reg_allocator.mark_dirty(dest_reg);
        
        emit_comment("DEBUG: " + dest + " = return value in " + dest_reg + " (dirty)");
    }
}

void MIPSGenerator::translate_return(TACInstruction* instr) {
    // TAC: return <value>
    
    if (instr->result && instr->result->type != TAC_OPERAND_EMPTY) {
        string ret_val = instr->result->value;
        emit_comment("return " + ret_val);
        
        // Get return value into a register
        string ret_reg;
        
        // Check if it's a constant
        bool is_constant = !ret_val.empty() && (isdigit(ret_val[0]) || ret_val[0] == '-');
        
        if (is_constant) {
            emit("li $v0, " + ret_val);
            emit_comment("DEBUG: Return constant " + ret_val + " in $v0");
        } else {
            ret_reg = ensure_in_register(ret_val);
            emit_comment("DEBUG: " + ret_val + " in " + ret_reg);
            
            // Move to $v0 if not already there
            if (ret_reg != "$v0") {
                emit("move $v0, " + ret_reg);
                emit_comment("DEBUG: Moved return value to $v0");
            }
        }
    } else {
        emit_comment("return (void)");
    }
    
    // Note: Epilogue will be generated by FUNC_END handler
}

string MIPSGenerator::get_mips_label(TACOperand* label) {
    if (label && label->type != TAC_OPERAND_EMPTY) {
        return label->value;
    }
    return "L0";
}

string MIPSGenerator::ensure_in_register(const string& var) {
    // Check if already in register
    if (storage_desc.is_in_register(var)) {
        return storage_desc.get_register(var);
    }
    
    // Not in register - need to load from memory
    string reg = allocate_register_with_spilling();
    
    // Load from memory (works for both real variables and temps now)
    int offset = get_offset(var);
    emit("lw " + reg + ", " + to_string(offset) + "($fp)");
    emit_comment("DEBUG: Loaded " + var + " from memory at " + to_string(offset) + "($fp)");
    
    reg_desc.add_var_to_reg(reg, var);
    storage_desc.add_location(var, reg);
    
    return reg;
}

string MIPSGenerator::get_reg(const string& var) {
    return ensure_in_register(var);
}

string MIPSGenerator::load_operand_to_register(TACOperand* operand) {
    // Load an operand (constant, variable, or temp) into a register
    // Returns the register containing the value
    
    if (!operand) {
        emit_comment("ERROR: Null operand in load_operand_to_register");
        return "$t0";  // Fallback
    }
    
    string value = operand->value;
    
    // Handle constants
    if (operand->type == TAC_OPERAND_CONSTANT) {
        string reg = allocate_register_with_spilling();
        emit("li " + reg + ", " + value);
        emit_comment("DEBUG: Loaded constant " + value + " into " + reg);
        return reg;  // Don't add to descriptors (temporary use only)
    }
    
    // Handle string literals
    if (operand->type == TAC_OPERAND_STRING) {
        string str_label = add_string_literal(value);
        string reg = allocate_register_with_spilling();
        emit("la " + reg + ", " + str_label);
        emit_comment("DEBUG: Loaded address of string \"" + value + "\" into " + reg);
        return reg;  // Don't add to descriptors (temporary use only)
    }
    
    // Check if it's a numeric literal (workaround for parser not always setting CONSTANT type)
    bool is_numeric = !value.empty();
    size_t start = 0;
    if (!value.empty() && (value[0] == '-' || value[0] == '+')) start = 1;
    for (size_t i = start; i < value.length(); i++) {
        if (!isdigit(value[i])) {
            is_numeric = false;
            break;
        }
    }
    if (is_numeric && value.length() > start) {
        string reg = allocate_register_with_spilling();
        emit("li " + reg + ", " + value);
        emit_comment("DEBUG: Loaded numeric literal " + value + " into " + reg);
        return reg;  // Don't add to descriptors (temporary use only)
    }
    
    // It's a variable or temp - use ensure_in_register
    return ensure_in_register(value);
}

string MIPSGenerator::allocate_register_with_spilling() {
    // Check if we have any free registers
    set<string> all_temp_regs = {"$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9"};
    
    for (const string& reg : all_temp_regs) {
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        if (vars.empty()) {
            // Found a free register - just return it
            return reg;
        }
    }
    
    // All registers are in use - need to spill one
    string victim_reg = reg_allocator.allocate_temp_reg();  // Gets round-robin victim
    
    emit_comment("DEBUG: Spilling register " + victim_reg + " due to register pressure");
    
    // Spill all variables in the victim register (including temps!)
    set<string> vars = reg_desc.get_vars_in_reg(victim_reg);
    for (const string& var : vars) {
        // Spill ALL variables (both real variables and temps) if dirty
        if (reg_allocator.is_dirty(victim_reg)) {
            int offset = get_offset(var);
            emit("sw " + victim_reg + ", " + to_string(offset) + "($fp)");
            emit_comment("DEBUG: Spilled " + var + " from " + victim_reg + " to memory at " + to_string(offset) + "($fp)");
            // ADD memory location to storage descriptor
            storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
        }
        // Remove the register location from storage descriptor (variable no longer in this register)
        storage_desc.remove_location(var, victim_reg);
    }
    
    // Clear the register descriptor
    reg_desc.clear_reg(victim_reg);
    
    return victim_reg;
}

void MIPSGenerator::spill_register(const string& reg) {
    set<string> vars = reg_desc.get_vars_in_reg(reg);
    
    for (const string& var : vars) {
        // Only spill if not already in memory
        if (storage_desc.is_only_in_register(var)) {
            int offset = get_offset(var);
            emit("sw " + reg + ", " + to_string(offset) + "($fp)");
            storage_desc.add_location(var, "memory:" + var);
        }
        reg_desc.remove_var_from_reg(reg, var);
        storage_desc.remove_location(var, reg);
    }
    
    reg_desc.clear_reg(reg);
}

string MIPSGenerator::load_operand(TACOperand* operand, const string& reg) {
    // Stub: just return the register
    return reg;
}

void MIPSGenerator::store_to_memory(const string& reg, TACOperand* dest) {
    if (!dest) return;
    
    string var_name = dest->value;
    int offset = get_offset(var_name);
    
    // Store to memory: sw $reg, offset($fp)
    emit("sw " + reg + ", " + to_string(offset) + "($fp)");
    
    // Update storage descriptor
    storage_desc.add_location(var_name, "memory:" + var_name);
}

int MIPSGenerator::get_offset(const string& var_name) {
    // Use the helper function from parser.y to get variable offset
    return get_variable_offset(var_name.c_str());
}

string MIPSGenerator::get_operand_string(TACOperand* operand) {
    if (!operand || operand->type == TAC_OPERAND_EMPTY) {
        return "(empty)";
    }
    return operand->value;
}

bool MIPSGenerator::is_float_type(const string& type_name) {
    return type_name == "float";
}

void MIPSGenerator::emit(const string& instruction) {
    output << "    " << instruction << "\n";
    // Also emit to clean output if available
    if (clean_output) {
        *clean_output << "    " << instruction << "\n";
    }
}

void MIPSGenerator::emit_comment(const string& comment) {
    output << "    # " << comment << "\n";
    // Do NOT emit comments to clean output (that's the point of clean output)
}

void MIPSGenerator::emit_label(const string& label) {
    output << label << ":\n";
    // Also emit to clean output if available
    if (clean_output) {
        *clean_output << label << ":\n";
    }
}

void MIPSGenerator::spill_all_dirty() {
    // Write back all dirty registers to memory
    set<string> dirty_regs = reg_allocator.get_dirty_regs();
    
    if (dirty_regs.empty()) {
        emit_comment("DEBUG: No dirty registers to spill");
        return;
    }
    
    emit_comment("DEBUG: Spilling " + to_string(dirty_regs.size()) + " dirty registers");
    
    for (const string& reg : dirty_regs) {
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        
        for (const string& var : vars) {
            // Spill ALL variables (both real variables and temps)
            int offset = get_offset(var);
            emit("sw " + reg + ", " + to_string(offset) + "($fp)");
            emit_comment("DEBUG: Spilled " + var + " from " + reg + " to memory at " + to_string(offset) + "($fp)");
            // ADD memory location to storage descriptor
            storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
        }
    }
    
    // Clear dirty bits after spilling
    reg_allocator.clear_all();
}

void MIPSGenerator::print_descriptors() {
    emit_comment("--- Register Descriptor ---");
    // Print which variables are in which registers
    set<string> all_regs = {"$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9"};
    for (const string& reg : all_regs) {
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        if (!vars.empty()) {
            string vars_str = "";
            for (const string& var : vars) {
                if (!vars_str.empty()) vars_str += ", ";
                vars_str += var;
            }
            emit_comment(reg + ": [" + vars_str + "]" + 
                        (reg_allocator.is_dirty(reg) ? " (dirty)" : ""));
        }
    }
    emit_comment("--- End Register Descriptor ---");
    
    emit_comment("--- Storage Descriptor ---");
    // Print where each variable is stored (register and/or memory)
    // Get ALL variables from storage descriptor (not just those in registers)
    set<string> all_vars = storage_desc.get_all_variables();
    
    for (const string& var : all_vars) {
        set<string> locations = storage_desc.get_locations(var);
        if (!locations.empty()) {
            string locs_str = "";
            for (const string& loc : locations) {
                if (!locs_str.empty()) locs_str += ", ";
                locs_str += loc;
            }
            emit_comment(var + ": [" + locs_str + "]");
        }
    }
    emit_comment("--- End Storage Descriptor ---");
}


