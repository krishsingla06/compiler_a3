#include "mips_generator.h"
#include "tac.h"
#include <iostream>
#include<bits/stdc++.h>
#include <iomanip>
#include <algorithm>
#include <cstdio>

// Extern declaration to access helper function from parser.y
extern "C" int get_variable_offset(const char* var_name);
extern "C" const char* get_variable_type(const char* var_name);
extern "C" bool is_variable_float(const char* var_name);
extern "C" bool is_variable_char(const char* var_name);
extern "C" int get_variable_pointer_level(const char* var_name);
extern "C" bool is_variable_global(const char* var_name);
extern "C" bool is_variable_static(const char* var_name);
extern "C" int get_global_variable_count();
extern "C" const char* get_global_variable_at_index(int index, bool* out_is_float);
int get_function_stack_frame_size(const string& mangledName);
int get_function_param_count(const string& mangledName);
string get_function_param_name(const string& mangledName, int param_index);

// Extern declaration to access jump tables from parser.y
extern map<int, vector<TACOperand*>> overall_jump_tables;
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
    : output(out), clean_output(clean_out), current_block_id(0), next_string_id(0), next_global_offset(0), current_instruction_index(0), peephole_window_size(12) {
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




//todo


void MIPSGenerator::compute_next_use_info(const BasicBlock& block, 
                                          const vector<TACInstruction*>& tac_instructions) {
    emit_comment("=== Computing Next-Use Information for Block B" + to_string(block.id) + " ===");
    // next_use_table.clear();
    map<string, int> next_use;  // Variable -> next use index
    // Process instructions in reverse order
    for (int i = block.end_index; i >= block.start_index; i--) {
        TACInstruction* instr = tac_instructions[i];
        map<string, int> current_info;  
if (instr->result && 
    (instr->result->type == TAC_OPERAND_IDENTIFIER || 
     instr->result->type == TAC_OPERAND_TEMP_VAR) &&
    instr->flag != 1 && instr->flag != 2 && instr->flag != 4) {
    string var_name = instr->result->value;
    current_info[var_name] = -1;
    next_use.erase(var_name);
}

// Arg1 variable - USE
if (instr->arg1 && (instr->arg1->type == TAC_OPERAND_IDENTIFIER || 
                    instr->arg1->type == TAC_OPERAND_TEMP_VAR)){
    string var_name = instr->arg1->value;  // ← FIX 1
    if (next_use.find(var_name) != next_use.end()) {
        current_info[var_name] = next_use[var_name];
    } else {
        current_info[var_name] = -1;
    }
    next_use[var_name] = i;
}

// Arg2 variable - USE
if (instr->arg2 && (instr->arg2->type == TAC_OPERAND_IDENTIFIER || 
                    instr->arg2->type == TAC_OPERAND_TEMP_VAR)){
    string var_name = instr->arg2->value;  // ← FIX 2
    if (next_use.find(var_name) != next_use.end()) {
        current_info[var_name] = next_use[var_name];
    } else {
        current_info[var_name] = -1;
    }
    next_use[var_name] = i;
}        
        // Store current instruction's next-use info
        next_use_table[i] = current_info;
        
        // Emit debug info
        emit_comment("Instr i" + to_string(i) + " Next-Use:");
        for (const auto& pair : current_info) {
            emit_comment("  " + pair.first + " -> " + 
                         (pair.second == -1 ? "N/A" : "i" + to_string(pair.second)));
        }
    }
    emit_comment("=== End of Next-Use Computation for Block B" + to_string(block.id) + " ===");
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
    
    // Collect global and static variables
    collect_global_variables(tac_instructions);
    
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
            compute_next_use_info(block, tac_instructions);
    emit_comment("Next-use information computed");

        // Process instructions in this basic block
        for (int i = block.start_index; i <= block.end_index; i++) {
            TACInstruction* instr = tac_instructions[i];
            current_instruction_index=i;
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
                flush_instruction_buffer();  // ← ADD THIS LINE

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
    
    // At the very end, flush instruction buffer
    // flush_instruction_buffer();
    
    emit_comment("End of code");
    
    // Emit runtime library functions that were used
    if (runtime_lib.has_used_functions()) {
        emit_comment("======================================");
        emit_comment("  Including Runtime Library Functions");
        emit_comment("======================================");
        runtime_lib.emit_library_code(output);
        if (clean_output) {
            runtime_lib.emit_library_code(*clean_output);
        }
    }
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

void MIPSGenerator::collect_global_variables(const vector<TACInstruction*>& tac_instructions) {
    emit_comment("======================================");
    emit_comment("  Collecting Global and Static Variables");
    emit_comment("======================================");
    
    // First, allocate space for ALL global/static variables from symbol table
    // This ensures even unused variables get allocated
    int global_var_count = get_global_variable_count();
    for (int i = 0; i < global_var_count; i++) {
        bool is_float = false;
        const char* var_name_cstr = get_global_variable_at_index(i, &is_float);
        if (var_name_cstr) {
            string var_name(var_name_cstr);
            allocate_global_space(var_name, is_float);
        }
    }
    
    emit_comment("Allocated space for " + to_string(global_var_offsets.size()) + " global/static variables");
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
    
    // Emit global and static variables
    emit_comment("Global and Static Variables");
    
    if (!global_var_offsets.empty()) {
        // Create a sorted list of variables by offset to ensure correct layout
        vector<pair<string, int>> sorted_vars(global_var_offsets.begin(), global_var_offsets.end());
        sort(sorted_vars.begin(), sorted_vars.end(), 
             [](const pair<string, int>& a, const pair<string, int>& b) {
                 return a.second < b.second;
             });
        
        // Reserve space for global/static variables with proper offsets
        for (const auto& var_pair : sorted_vars) {
            const string& var_name = var_pair.first;
            int offset = var_pair.second;
            bool is_float = is_variable_float(var_name.c_str());
            
         // Emit the variable as a labeled word in data section
         output << var_name << ": .word 0  # " << (is_float ? "float" : "int") 
             << " (global/static) at " << offset << "($gp)\n";
         // Also include an informative comment in the clean output so offsets are visible
         if (clean_output) *clean_output << var_name << ": .word 0  # " << (is_float ? "float" : "int") 
                   << " (global/static) at " << offset << "($gp)\n";
        }
    } else {
        emit_comment("(no global or static variables)");
    }
    
    output << "\n";
    if (clean_output) *clean_output << "\n";
}

void MIPSGenerator::generate_text_section(const vector<TACInstruction*>& tac_instructions) {
    // Stub
}

void MIPSGenerator::generate_function_prologue(const string& func_name) {
    emit_comment("=== Function Prologue for " + func_name + " ===");
    
    int frame_size = calculate_stack_frame_size(func_name);
    emit_comment("Frame size: " + to_string(frame_size) + " bytes");
    
    int total_frame = frame_size;
    emit_direct("addiu $sp, $sp, -" + to_string(total_frame));  // ← CHANGE HERE
    emit_comment("Allocate " + to_string(total_frame) + " bytes (8 for $ra+$fp, " + 
                 to_string(frame_size) + " for locals/temps)");
    
    emit_direct("sw $ra, " + to_string(frame_size - 4) + "($sp)");  // ← CHANGE HERE
    emit_comment("Save return address at " + to_string(frame_size + 4) + "($sp)");
    
    emit_direct("sw $fp, " + to_string(frame_size - 8) + "($sp)");  // ← CHANGE HERE
    emit_comment("Save old frame pointer at " + to_string(frame_size) + "($sp)");
    
    emit_direct("addiu $fp, $sp, " + to_string(frame_size - 8));  // ← CHANGE HERE
    emit_comment("Set new frame pointer (points to saved old $fp)");
    
    // ...rest of function...
}

void MIPSGenerator::generate_function_epilogue(const string& func_name) {
    emit_comment("=== Function Epilogue for " + func_name + " ===");
    
    int frame_size = calculate_stack_frame_size(func_name);
    
    emit_direct("move $sp, $fp");  // ← CHANGE HERE
    emit_comment("Move $sp to $fp (where old $fp is saved)");

    emit_direct("lw $ra, 4($fp)");  // ← CHANGE HERE
    emit_comment("Restore return address");

    emit_direct("lw $fp, 0($fp)");  // ← CHANGE HERE
    emit_comment("Restore old frame pointer");
    
    emit_direct("addiu $sp, $sp, 8");  // ← CHANGE HERE
    emit_comment("Deallocate saved $ra and $fp (8 bytes)");
    
    emit_direct("jr $ra");  // ← CHANGE HERE
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
    // 1. First 4 params: 
    //    - Float params: $f12-$f15 AND memory (+8($fp), +12($fp), +16($fp), +20($fp))
    //    - Int params: $a0-$a3 AND memory (+8($fp), +12($fp), +16($fp), +20($fp))
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
            // Check if parameter is float
            bool is_float_param = is_variable_float(mangled_param.c_str());
            
            string arg_reg;
            if (is_float_param) {
                // Float parameters go in $f12-$f15
                arg_reg = "$f" + to_string(12 + i);
                emit_comment("DEBUG: Float parameter " + to_string(i) + " (" + mangled_param + ") in " + arg_reg);
            } else {
                // Integer parameters go in $a0-$a3
                arg_reg = "$a" + to_string(i);
                emit_comment("DEBUG: Integer parameter " + to_string(i) + " (" + mangled_param + ") in " + arg_reg);
            }
            
            // Add to register descriptor
            reg_desc.add_var_to_reg(arg_reg, mangled_param);
            
            // Add to storage descriptor
            storage_desc.add_location(mangled_param, arg_reg);
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
    else if (instr->flag == 4) {
        // Jump table (switch-case): jump to table[arg2]
        translate_jump_table(instr);
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
    else if (instr->op.type == TAC_OPERATOR_CAST) {
        // Type cast: result = (type)arg2
        translate_cast(instr);
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
    // ptr = t1
    
    if (!instr->result || !instr->arg1) return;
    
    string dest = instr->result->value;
    string src = instr->arg1->value;
    
    emit_comment("Assignment: " + dest + " = " + src);
    
    // Check if this is a float assignment
    bool dest_is_float = is_variable_float(dest.c_str()); // not float
    bool src_is_float = is_operand_float(instr->arg1); // not float
    
    if (dest_is_float || src_is_float) {
        // Float assignment
        emit_comment("DEBUG: Float assignment");
        
        // Load source into float register
        string src_freg = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: " + src + " in " + src_freg);
        
        // If destination is already in a register, update it
        // Otherwise just update descriptors
        reg_desc.add_var_to_reg(src_freg, dest);
        storage_desc.set_location(dest, src_freg);
        reg_allocator.mark_dirty(src_freg);
        
        emit_comment("DEBUG: " + dest + " = " + src + " in " + src_freg + " (dirty, float)");
        return;
    }
    
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
                        if (is_global_or_static(var)) {
                            int offset = get_global_offset(var);
                            emit("sw " + old_dest_reg + ", " + to_string(offset) + "($gp)");
                            emit_comment("DEBUG: Spilled global/static " + var + " from " + old_dest_reg + " to memory at " + to_string(offset) + "($gp)");
                            storage_desc.add_location(var, "memory:" + to_string(offset) + "($gp)");
                        } else {
                            int offset = get_offset(var);
                            emit("sw " + old_dest_reg + ", " + to_string(offset) + "($fp)");
                            emit_comment("DEBUG: Spilled " + var + " from " + old_dest_reg + " to memory at " + to_string(offset) + "($fp)");
                            storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
                        }
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
        
        // IMPORTANT: Save to memory for pointer/address assignments
        // This ensures that pointer values are available for later dereferences
        if (is_global_or_static(dest)) {
            int dest_offset = get_global_offset(dest);
            emit("sw " + src_reg + ", " + to_string(dest_offset) + "($gp)");
            emit_comment("DEBUG: Saved global/static " + dest + " to memory at " + to_string(dest_offset) + "($gp)");
            storage_desc.add_location(dest, "memory:" + to_string(dest_offset) + "($gp)");
        } else {
            int dest_offset = get_offset(dest);
            emit("sw " + src_reg + ", " + to_string(dest_offset) + "($fp)");
            emit_comment("DEBUG: Saved " + dest + " to memory at " + to_string(dest_offset) + "($fp)");
            storage_desc.add_location(dest, "memory:" + to_string(dest_offset) + "($fp)");
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
                        if (is_global_or_static(var)) {
                            int offset = get_global_offset(var);
                            emit("sw " + old_dest_reg + ", " + to_string(offset) + "($gp)");
                            emit_comment("DEBUG: Spilled global/static " + var + " from " + old_dest_reg + " to memory at " + to_string(offset) + "($gp)");
                            storage_desc.add_location(var, "memory:" + to_string(offset) + "($gp)");
                        } else {
                            int offset = get_offset(var);
                            emit("sw " + old_dest_reg + ", " + to_string(offset) + "($fp)");
                            emit_comment("DEBUG: Spilled " + var + " from " + old_dest_reg + " to memory at " + to_string(offset) + "($fp)");
                            storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
                        }
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
        
        // IMPORTANT: For pointer variables, save to memory immediately so they can be dereferenced
        int dest_ptr_level = get_variable_pointer_level(dest.c_str());
        if (dest_ptr_level > 0) {
            int dest_offset = get_offset(dest);
            emit("sw " + src_reg + ", " + to_string(dest_offset) + "($fp)");
            emit_comment("DEBUG: Saved pointer " + dest + " to memory for later dereference");
            storage_desc.add_location(dest, "memory:" + to_string(dest_offset) + "($fp)");
        }
    }
}

void MIPSGenerator::translate_arithmetic(TACInstruction* instr) {
    // result = arg1 op arg2
    
    string dest = instr->result->value;
    string src1 = instr->arg1->value;
    string src2 = instr->arg2->value;
    
    // Check if this is a float operation
    bool is_float_op = is_operand_float(instr->arg1) || is_operand_float(instr->arg2);
    
    if (is_float_op) {
        // Float arithmetic
        string op_name;
        switch (instr->op.type) {
            case TAC_OPERATOR_ADD: op_name = "add.s"; break;
            case TAC_OPERATOR_SUB: op_name = "sub.s"; break;
            case TAC_OPERATOR_MUL: op_name = "mul.s"; break;
            case TAC_OPERATOR_DIV: op_name = "div.s"; break;
            case TAC_OPERATOR_MOD: 
                emit_comment("ERROR: Modulo not supported for floats");
                return;
            default: op_name = "unknown"; break;
        }
        
        emit_comment(dest + " = " + src1 + " " + op_name + " " + src2 + " (float)");
        
        // Get operands into float registers
        string freg1 = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: " + src1 + " in " + freg1);
        
        string freg2 = load_operand_to_register(instr->arg2);
        emit_comment("DEBUG: " + src2 + " in " + freg2);
        
        // Allocate destination float register
        string dest_freg = reg_allocator.allocate_float_reg();
        
        // Generate operation
        emit(op_name + " " + dest_freg + ", " + freg1 + ", " + freg2);
        
        // Update descriptors
        reg_desc.add_var_to_reg(dest_freg, dest);
        storage_desc.set_location(dest, dest_freg);
        reg_allocator.mark_dirty(dest_freg);
        
        emit_comment("DEBUG: " + dest + " = result in " + dest_freg + " (dirty, float)");
    } else {
        // Integer arithmetic
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
        
        // Free constant registers after use (they won't be needed again)
        if (instr->arg1->type == TAC_OPERAND_CONSTANT || 
            (instr->arg1->value.length() > 0 && isdigit(instr->arg1->value[0]))) {
            set<string> vars1 = reg_desc.get_vars_in_reg(reg1);
            for (const string& v : vars1) {
                if (v.find("<CONST_") == 0) {
                    reg_desc.remove_var_from_reg(reg1, v);
                    storage_desc.remove_location(v, reg1);
                }
            }
        }
        if (instr->arg2->type == TAC_OPERAND_CONSTANT || 
            (instr->arg2->value.length() > 0 && isdigit(instr->arg2->value[0]))) {
            set<string> vars2 = reg_desc.get_vars_in_reg(reg2);
            for (const string& v : vars2) {
                if (v.find("<CONST_") == 0) {
                    reg_desc.remove_var_from_reg(reg2, v);
                    storage_desc.remove_location(v, reg2);
                }
            }
        }
        
        // Update descriptors - keep result in register ONLY
        reg_desc.add_var_to_reg(dest_reg, dest);
        storage_desc.set_location(dest, dest_reg);
        reg_allocator.mark_dirty(dest_reg);
        
        emit_comment("DEBUG: " + dest + " = result in " + dest_reg + " (dirty)");
    }
}


void MIPSGenerator::translate_comparison(TACInstruction* instr) {
    // Two cases:
    // 1. flag == 2: if arg1 op arg2 goto result (conditional branch)
    // 2. flag == 0: result = arg1 op arg2 (comparison result stored in variable)
    
    string src1 = instr->arg1->value;
    string src2 = instr->arg2->value;

    // Check if this is a float comparison
    bool is_float_cmp = is_operand_float(instr->arg1) || is_operand_float(instr->arg2);
    
    if (instr->flag == 2) {
        // Conditional branch: if arg1 op arg2 goto label
        string target_label = instr->result->value;
        
        
        if (is_float_cmp) {
            // Float comparison with conditional branch
            string op_name;
            
            switch (instr->op.type) {
                case TAC_OPERATOR_EQ: op_name = "=="; break;
                case TAC_OPERATOR_NE: op_name = "!="; break;
                case TAC_OPERATOR_LT: op_name = "<"; break;
                case TAC_OPERATOR_GT: op_name = ">"; break;
                case TAC_OPERATOR_LE: op_name = "<="; break;
                case TAC_OPERATOR_GE: op_name = ">="; break;
                default: op_name = "??"; break;
            }
            
            emit_comment("if " + src1 + " " + op_name + " " + src2 + " goto I" + target_label + " (float)");
            
            // Get operands into float registers
            string freg1 = load_operand_to_register(instr->arg1);
            emit_comment("DEBUG: " + src1 + " in " + freg1);
            
            string freg2 = load_operand_to_register(instr->arg2);
            emit_comment("DEBUG: " + src2 + " in " + freg2);
            
            // MIPS float comparison: c.xx.s followed by bc1t/bc1f
            switch (instr->op.type) {
                case TAC_OPERATOR_EQ:
                    emit("c.eq.s " + freg1 + ", " + freg2);
                    emit("bc1t I" + target_label);
                    break;
                case TAC_OPERATOR_NE:
                    emit("c.eq.s " + freg1 + ", " + freg2);
                    emit("bc1f I" + target_label);
                    break;
                case TAC_OPERATOR_LT:
                    emit("c.lt.s " + freg1 + ", " + freg2);
                    emit("bc1t I" + target_label);
                    break;
                case TAC_OPERATOR_LE:
                    emit("c.le.s " + freg1 + ", " + freg2);
                    emit("bc1t I" + target_label);
                    break;
                case TAC_OPERATOR_GT:
                    // GT is !LE
                    emit("c.le.s " + freg1 + ", " + freg2);
                    emit("bc1f I" + target_label);
                    break;
                case TAC_OPERATOR_GE:
                    // GE is !LT
                    emit("c.lt.s " + freg1 + ", " + freg2);
                    emit("bc1f I" + target_label);
                    break;
                default:
                    emit_comment("ERROR: Unknown float comparison operator");
                    break;
            }
            emit_comment("Branch to I" + target_label + " if condition true");
            
        } else {
            // Integer comparison with conditional branch
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
        }
        
    } else {
        // Comparison result stored in variable: result = arg1 op arg2
        string dest = instr->result->value;
        
        if (is_float_cmp) {
            // Float comparison storing result
            string op_name;
            
            switch (instr->op.type) {
                case TAC_OPERATOR_EQ: op_name = "=="; break;
                case TAC_OPERATOR_NE: op_name = "!="; break;
                case TAC_OPERATOR_LT: op_name = "<"; break;
                case TAC_OPERATOR_GT: op_name = ">"; break;
                case TAC_OPERATOR_LE: op_name = "<="; break;
                case TAC_OPERATOR_GE: op_name = ">="; break;
                default: op_name = "??"; break;
            }
            
            emit_comment(dest + " = " + src1 + " " + op_name + " " + src2 + " (float)");
            
            // Get operands into float registers
            string freg1 = load_operand_to_register(instr->arg1);
            emit_comment("DEBUG: " + src1 + " in " + freg1);
            
            string freg2 = load_operand_to_register(instr->arg2);
            emit_comment("DEBUG: " + src2 + " in " + freg2);
            
            // Allocate destination register (integer result: 0 or 1)
            string dest_reg = allocate_register_with_spilling();
            
            // Generate comparison and convert to 0/1
            switch (instr->op.type) {
                case TAC_OPERATOR_EQ:
                    emit("c.eq.s " + freg1 + ", " + freg2);
                    emit("li " + dest_reg + ", 0");
                    emit("bc1f 1f");  // Skip next instruction if false
                    emit("li " + dest_reg + ", 1");
                    emit_label("1");
                    break;
                case TAC_OPERATOR_NE:
                    emit("c.eq.s " + freg1 + ", " + freg2);
                    emit("li " + dest_reg + ", 1");
                    emit("bc1f 1f");  // Skip next instruction if false
                    emit("li " + dest_reg + ", 0");
                    emit_label("1");
                    break;
                case TAC_OPERATOR_LT:
                    emit("c.lt.s " + freg1 + ", " + freg2);
                    emit("li " + dest_reg + ", 0");
                    emit("bc1f 1f");
                    emit("li " + dest_reg + ", 1");
                    emit_label("1");
                    break;
                case TAC_OPERATOR_LE:
                    emit("c.le.s " + freg1 + ", " + freg2);
                    emit("li " + dest_reg + ", 0");
                    emit("bc1f 1f");
                    emit("li " + dest_reg + ", 1");
                    emit_label("1");
                    break;
                case TAC_OPERATOR_GT:
                    emit("c.le.s " + freg1 + ", " + freg2);
                    emit("li " + dest_reg + ", 1");
                    emit("bc1f 1f");
                    emit("li " + dest_reg + ", 0");
                    emit_label("1");
                    break;
                case TAC_OPERATOR_GE:
                    emit("c.lt.s " + freg1 + ", " + freg2);
                    emit("li " + dest_reg + ", 1");
                    emit("bc1f 1f");
                    emit("li " + dest_reg + ", 0");
                    emit_label("1");
                    break;
                default:
                    emit_comment("ERROR: Unknown float comparison operator");
                    break;
            }
            
            // Update descriptors
            reg_desc.add_var_to_reg(dest_reg, dest);
            storage_desc.set_location(dest, dest_reg);
            reg_allocator.mark_dirty(dest_reg);
            
            emit_comment("DEBUG: " + dest + " = comparison result in " + dest_reg + " (0 or 1)");
            
        } else {
            // Integer comparison storing result
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
            
            emit_comment("DEBUG: " + dest + " = comparison result in " + dest_reg);
        }
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
    // t1 = &x
    // ptr = t1
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
    // float *ptr = f;
    // temp = &f
    // ptr = temp
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
    
    // Check if we're dereferencing a char* (for string literals)
    // String literals store 1-byte chars, so use lb (load byte) instead of lw (load word)
    bool is_char_ptr = is_variable_char(dest.c_str());
    
    if (is_char_ptr) {
        // Load byte (signed) for char* dereferencing
        emit("lb " + dest_reg + ", 0(" + ptr_reg + ")");
        emit_comment("DEBUG: Dereferenced *" + ptr + " (char*) into " + dest_reg + " using lb");
    } else {
        // Load value from address in ptr_reg: dest_reg = *ptr_reg
        emit("lw " + dest_reg + ", 0(" + ptr_reg + ")");
        emit_comment("DEBUG: Dereferenced *" + ptr + " into " + dest_reg);
    }
    
    // Update descriptors: dest is now in dest_reg and is dirty
    reg_desc.add_var_to_reg(dest_reg, dest);
    storage_desc.set_location(dest, dest_reg);
    reg_allocator.mark_dirty(dest_reg);
    
    emit_comment("DEBUG: " + dest + " = *" + ptr + " in " + dest_reg + " (dirty)");
}

void MIPSGenerator::translate_store_indirect(TACInstruction* instr) {
    // TAC: *(result) = arg1
    // MIPS: Store value (arg1) through pointer (result)
    
    string ptr = instr->result->value;
    string value = instr->arg1->value;
    
    emit_comment("*" + ptr + " = " + value);
    
    // IMPORTANT: Pointer must be loaded into CPU register (not FPU register)
    // Even if it points to a float, the pointer itself is an address (integer)
    string ptr_reg = ensure_in_register(ptr);
    emit_comment("DEBUG: Pointer " + ptr + " in " + ptr_reg);
    
    // Check if the value being stored is a float
    bool value_is_float = is_operand_float(instr->arg1);
    
    if (value_is_float) {
        // Store float value through pointer
        string value_freg = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: Float value " + value + " in " + value_freg);
        
        // Use s.s (store single) for floats: s.s $fX, 0($tY)
        emit("s.s " + value_freg + ", 0(" + ptr_reg + ")");
        emit_comment("DEBUG: Stored float " + value + " through pointer " + ptr);
    } else {
        // Store integer value through pointer
        string value_reg = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: Integer value " + value + " in " + value_reg);
        
        // Use sw (store word) for integers: sw $tX, 0($tY)
        emit("sw " + value_reg + ", 0(" + ptr_reg + ")");
        emit_comment("DEBUG: Stored integer " + value + " through pointer " + ptr);
    }
    
    // CRITICAL FIX: When storing through a pointer, we don't know which variable
    // it points to, so we must invalidate ALL cached register values for local variables
    // to force reload from memory on next use
    emit_comment("DEBUG: Invalidating all cached values due to pointer store");
    
    // Get all variables currently in registers
    set<string> all_temp_regs = {"$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9"};
    for (const string& reg : all_temp_regs) {
        set<string> vars_in_reg = reg_desc.get_vars_in_reg(reg);
        for (const string& var : vars_in_reg) {
            // Only invalidate actual variables (starting with v_), not temps (#t)
            if (var.length() > 0 && var[0] == 'v' && var[1] == '_') {
                emit_comment("DEBUG: Invalidating cached value of " + var + " in " + reg);
                storage_desc.remove_location(var, reg);
                reg_desc.remove_var_from_reg(reg, var);
            }
        }
    }
}

void MIPSGenerator::translate_cast(TACInstruction* instr) {
    // Type cast: result = (type)src
    // arg1 contains the value to cast, arg2 contains the target type
    
    if (!instr->result || !instr->arg1 || !instr->arg2) {
        emit_comment("ERROR: Invalid cast instruction");
        return;
    }
    
    string dest = instr->result->value;
    string src = instr->arg1->value;  // Source value
    string target_type = instr->arg2->value;  // Target type as string
    
    emit_comment("Cast: " + dest + " = (" + target_type + ")" + src);
    
    // Determine source and destination types
    bool src_is_float = is_operand_float(instr->arg1);
    bool src_is_char = is_operand_char(instr->arg1);
    bool dest_is_float = (target_type == "float");
    bool dest_is_char = (target_type == "char");
    
    // Case 1: Float to int/char conversion
    if (src_is_float && !dest_is_float) {
        emit_comment("DEBUG: Converting float to " + target_type);
        
        // Load source float into float register
        string src_freg = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: Source float in " + src_freg);
        
        // Allocate a temporary float register for rounded result
        string temp_freg = reg_allocator.allocate_float_reg();
        
        // Convert float to word (cvt.w.s)
        emit("cvt.w.s " + temp_freg + ", " + src_freg);
        emit_comment("DEBUG: Converted to integer in " + temp_freg);
        
        // Move from FPU to CPU register
        string dest_reg = allocate_register_with_spilling();
        emit("mfc1 " + dest_reg + ", " + temp_freg);
        emit_comment("DEBUG: Moved integer result to " + dest_reg);
        
        // If converting to char, mask to keep only lower 8 bits (optional, for consistency)
        // Since char is 4 bytes in our implementation, no masking needed
        
        // Update descriptors
        reg_desc.add_var_to_reg(dest_reg, dest);
        storage_desc.set_location(dest, dest_reg);
        reg_allocator.mark_dirty(dest_reg);
        
        emit_comment("DEBUG: " + dest + " = (" + target_type + ")" + src + " in " + dest_reg);
        
    } 
    // Case 2: Int/char to float conversion
    else if (!src_is_float && dest_is_float) {
        emit_comment("DEBUG: Converting " + string(src_is_char ? "char" : "int") + " to float");
        
        // Load source integer/char into CPU register
        string src_reg = load_operand_to_register(instr->arg1);
        emit_comment("DEBUG: Source " + string(src_is_char ? "char" : "int") + " in " + src_reg);
        
        // Allocate float registers
        string temp_freg = reg_allocator.allocate_float_reg();
        string dest_freg = reg_allocator.allocate_float_reg();
        
        // Move from CPU to FPU register
        emit("mtc1 " + src_reg + ", " + temp_freg);
        emit_comment("DEBUG: Moved integer to " + temp_freg);
        
        // Convert word to float (cvt.s.w)
        emit("cvt.s.w " + dest_freg + ", " + temp_freg);
        emit_comment("DEBUG: Converted to float in " + dest_freg);
        
        // Update descriptors
        reg_desc.add_var_to_reg(dest_freg, dest);
        storage_desc.set_location(dest, dest_freg);
        reg_allocator.mark_dirty(dest_freg);
        
        emit_comment("DEBUG: " + dest + " = (float)" + src + " in " + dest_freg);
        
    } 
    // Case 3: Float to float (no conversion needed)
    else if (src_is_float && dest_is_float) {
        emit_comment("DEBUG: Float to float (no conversion)");
        
        string src_freg = load_operand_to_register(instr->arg1);
        
        // Update descriptors
        reg_desc.add_var_to_reg(src_freg, dest);
        storage_desc.set_location(dest, src_freg);
        reg_allocator.mark_dirty(src_freg);
        
        emit_comment("DEBUG: " + dest + " = " + src + " in " + src_freg);
        
    } 
    // Case 4: Int to char, char to int, or char to char
    else {
        string src_type = src_is_char ? "char" : "int";
        string dest_type = dest_is_char ? "char" : "int";
        emit_comment("DEBUG: " + src_type + " to " + dest_type + " cast");
        
        // Load source into register (works for both int and char since both are 4 bytes)
        string src_reg = load_operand_to_register(instr->arg1);
        
        // For char, we could optionally mask to 8 bits, but since char is 4 bytes, 
        // we treat it the same as int
        // If you want to enforce ASCII range (0-255), uncomment:
        // if (dest_is_char) {
        //     emit("andi " + src_reg + ", " + src_reg + ", 0xFF");
        //     emit_comment("DEBUG: Masked to 8 bits for char");
        // }
        
        // Update descriptors
        reg_desc.add_var_to_reg(src_reg, dest);
        storage_desc.set_location(dest, src_reg);
        reg_allocator.mark_dirty(src_reg);
        
        emit_comment("DEBUG: " + dest + " = (" + target_type + ")" + src + " in " + src_reg);
    }
}

void MIPSGenerator::translate_jump(TACInstruction* instr) {
    // Unconditional jump: goto label
    if (instr->flag == 1) {
        string target_label = instr->result->value;
        emit_comment("Unconditional jump to I" + target_label);
        emit("j I" + target_label);
    }
}

void MIPSGenerator::translate_jump_table(TACInstruction* instr) {
    // TAC: flag=4, arg1=table_id, arg2=index (expression_value - min_case)
    // Jump to jump_table[table_id][index]
    
    if (!instr->arg1 || !instr->arg2) {
        emit_comment("ERROR: Invalid jump table instruction");
        return;
    }
    
    int table_id = stoi(instr->arg1->value);
    string index_var = instr->arg2->value;
    
    emit_comment("=== Switch-Case Jump Table " + to_string(table_id) + " ===");
    
    // Check if jump table exists
    if (overall_jump_tables.find(table_id) == overall_jump_tables.end()) {
        emit_comment("ERROR: Jump table " + to_string(table_id) + " not found");
        return;
    }
    
    vector<TACOperand*>& jump_table = overall_jump_tables[table_id];
    int table_size = jump_table.size();
    
    emit_comment("Jump table size: " + to_string(table_size));
    
    // Get index into a register
    string index_reg = load_operand_to_register(instr->arg2);
    emit_comment("DEBUG: Index in " + index_reg);
    
    // Allocate a temporary register for comparison values
    string cmp_reg = allocate_register_with_spilling();
    emit_comment("DEBUG: Using " + cmp_reg + " for comparison values");
    
    // For small switch tables, generate a series of comparisons and branches
    // For larger tables, we could generate actual jump tables in data section
    // For now, using if-else chain approach (simple and works for all cases)
    
    for (int i = 0; i < table_size; i++) {
        TACOperand* target = jump_table[i];
        if (!target) continue;
        
        string target_label = target->value;
        
        // Spill all dirty registers before branching to another basic block
        emit_comment("DEBUG: Spilling before branch to I" + target_label);
        spill_all_dirty();
        
        // Compare index with i
        emit("li " + cmp_reg + ", " + to_string(i));
        emit("beq " + index_reg + ", " + cmp_reg + ", I" + target_label);
        emit_comment("DEBUG: if index == " + to_string(i) + " goto I" + target_label);
    }
    
    // If no match found, fall through (default case already handled by bounds checks)
    emit_comment("=== End Jump Table ===");
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
    
    // ===== CALLER-SAVE: Spill ALL $t0-$t9 and $a0-$a3 registers FIRST =====
    // CRITICAL: This MUST happen BEFORE any parameter processing (including built-ins)
    // so that when we load parameters, we get the updated values from memory
    emit_comment("=== Caller-Save: Spill ALL registers before call ===");
    
    // Spill $t0-$t9
    for (int i = 0; i <= 9; i++) {
        string reg = "$t" + to_string(i);
        
        // Get ALL variable(s) stored in this register (dirty or clean)
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        
        if (!vars.empty()) {
            for (const string& var : vars) {
                // Skip constants and invalid variables
                if (var == "<CONSTANT>" || var.empty()) {
                    continue;
                }
                
                // Get offset - if it's 0, this might be invalid or old $fp location
                int offset = get_offset(var);
                
                // Don't spill to 0($fp) as that's the saved old $fp location
                if (offset == 0) {
                    continue;
                }
                
                // Spill to memory using existing offset
                emit("sw " + reg + ", " + to_string(offset) + "($fp)");
                emit_comment("DEBUG: Spilled " + var + " from " + reg + " to " + to_string(offset) + "($fp)");
                
                // Update storage descriptor: variable is now ONLY in memory
                storage_desc.set_location(var, "memory:" + to_string(offset) + "($fp)");
            }
        }
        
        // Clear the register descriptor completely (assume destroyed by call)
        reg_desc.clear_reg(reg);
        
        // Clear dirty flag for this register
        reg_allocator.clear_dirty(reg);
    }
    
    // Spill $a0-$a3 (argument registers will be clobbered by the call)
    for (int i = 0; i <= 3; i++) {
        string reg = "$a" + to_string(i);
        
        // Get ALL variable(s) stored in this register
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        
        if (!vars.empty()) {
            for (const string& var : vars) {
                // Skip constants and invalid variables
                if (var == "<CONSTANT>" || var.empty()) {
                    continue;
                }
                
                // Get offset
                int offset = get_offset(var);
                
                // Don't spill to 0($fp)
                if (offset == 0) {
                    continue;
                }
                
                // Spill to memory
                emit("sw " + reg + ", " + to_string(offset) + "($fp)");
                emit_comment("DEBUG: Spilled " + var + " from " + reg + " to " + to_string(offset) + "($fp)");
                
                // Update storage descriptor: variable is now ONLY in memory
                storage_desc.set_location(var, "memory:" + to_string(offset) + "($fp)");
            }
        }
        
        // Clear the register descriptor (will be overwritten by call)
        reg_desc.clear_reg(reg);
    }
    
    // Spill float registers $f0-$f11 (caller-saved float registers)
    // Note: In MIPS, $f12 is used for float return value and first float arg
    for (int i = 0; i <= 11; i++) {
        string freg = "$f" + to_string(i);
        
        // Get ALL variable(s) stored in this float register
        set<string> vars = reg_desc.get_vars_in_reg(freg);
        
        if (!vars.empty()) {
            for (const string& var : vars) {
                // Skip constants and invalid variables
                if (var == "<CONSTANT>" || var.empty()) {
                    continue;
                }
                
                // Get offset
                int offset = get_offset(var);
                
                // Don't spill to 0($fp)
                if (offset == 0) {
                    continue;
                }
                
                // Spill float to memory
                emit("swc1 " + freg + ", " + to_string(offset) + "($fp)");
                emit_comment("DEBUG: Spilled float " + var + " from " + freg + " to " + to_string(offset) + "($fp)");
                
                // Update storage descriptor: variable is now ONLY in memory
                storage_desc.set_location(var, "memory:" + to_string(offset) + "($fp)");
            }
        }
        
        // Clear the float register descriptor (will be clobbered by call)
        reg_desc.clear_reg(freg);
    }
    
    // NOTE: $t0-$t9 are also caller-saved (will be clobbered by callee)
    // We've already spilled them above, but make sure ALL are marked as invalid after the call
    // This ensures no stale register contents are used after the function returns
    
    emit_comment("=== End Caller-Save ===");
    
    // ===== SPECIAL HANDLING FOR LIBRARY FUNCTIONS =====
    // Check if it's a library function
    bool is_print_int = (func_name.find("print_int") == 0);
    bool is_print_float = (func_name.find("print_float") == 0);
    bool is_print_char = (func_name.find("print_char") == 0);
    bool is_print_string = (func_name.find("print_string") == 0);
    bool is_print_newline = (func_name.find("print_newline") == 0);
    bool is_printf = (func_name.find("printf") == 0);
    
    if (is_print_int) {
        emit_comment("=== Call library function: print_int ===");
        runtime_lib.mark_function_used("print_int");
        
        // Get the single parameter
        if (!pending_params.empty()) {
            string param = pending_params[pending_params.size() - 1];
            pending_params.clear();
            
            // Load parameter into $a0
            bool is_constant = !param.empty() && (isdigit(param[0]) || param[0] == '-');
            if (is_constant) {
                emit("li $a0, " + param);
            } else {
                string param_reg = ensure_in_register(param);
                if (param_reg != "$a0") {
                    emit("move $a0, " + param_reg);
                }
            }
            
            // Call library function
            emit("jal __lib_print_int");
            emit_comment("=== End print_int ===");
        }
        return;
    }
    
    if (is_print_float) {
        emit_comment("=== Call library function: print_float ===");
        runtime_lib.mark_function_used("print_float");
        
        // Get the single parameter
        if (!pending_params.empty()) {
            string param = pending_params[pending_params.size() - 1];
            pending_params.clear();
            
            // Check if parameter is a float literal or variable
            bool is_float_literal = param.find('.') != string::npos;
            
            if (is_float_literal) {
                // Load float literal into $f12
                emit("li.s $f12, " + param);
                emit_comment("DEBUG: Loaded float literal " + param + " into $f12");
            } else {
                // Load float variable into $f12
                string param_freg = ensure_in_float_register(param);
                if (param_freg != "$f12") {
                    emit("mov.s $f12, " + param_freg);
                    emit_comment("DEBUG: Moved float from " + param_freg + " to $f12");
                }
            }
            
            // Call library function
            emit("jal __lib_print_float");
            emit_comment("=== End print_float ===");
        }
        return;
    }
    
    if (is_print_char) {
        emit_comment("=== Call library function: print_char ===");
        runtime_lib.mark_function_used("print_char");
        
        // Get the single parameter
        if (!pending_params.empty()) {
            string param = pending_params[pending_params.size() - 1];
            pending_params.clear();
            
            // Load parameter into $a0
            bool is_constant = !param.empty() && (isdigit(param[0]) || param[0] == '-');
            if (is_constant) {
                emit("li $a0, " + param);
                emit_comment("DEBUG: Loaded char constant " + param + " into $a0");
            } else {
                string param_reg = ensure_in_register(param);
                if (param_reg != "$a0") {
                    emit("move $a0, " + param_reg);
                    emit_comment("DEBUG: Moved char from " + param_reg + " to $a0");
                }
            }
            
            // Call library function
            emit("jal __lib_print_char");
            emit_comment("=== End print_char ===");
        }
        return;
    }
    
    if (is_print_string) {
        emit_comment("=== Call library function: print_string ===");
        runtime_lib.mark_function_used("print_string");
        
        // Get the single parameter (string address)
        if (!pending_params.empty()) {
            string param = pending_params[pending_params.size() - 1];
            pending_params.clear();
            
            // Load string address into $a0
            string param_reg = ensure_in_register(param);
            if (param_reg != "$a0") {
                emit("move $a0, " + param_reg);
            }
            
            // Call library function
            emit("jal __lib_print_string");
            emit_comment("=== End print_string ===");
        }
        return;
    }
    
    if (is_print_newline) {
        emit_comment("=== Call library function: print_newline ===");
        runtime_lib.mark_function_used("print_newline");
        pending_params.clear();
        
        // Call library function
        emit("jal __lib_print_newline");
        emit_comment("=== End print_newline ===");
        return;
    }
    
    // ===== SPECIAL HANDLING FOR PRINTF =====
    if (is_printf) {
        emit_comment("=== Call library function: printf (variadic) ===");
        runtime_lib.mark_function_used("printf");
        
        if (pending_params.empty()) {
            emit_comment("ERROR: printf called with no format string");
            return;
        }
        
        // Printf uses a special calling convention:
        // - Format string in $a0
        // - Variadic arguments on stack
        // Parameters are in forward order in pending_params (first param at index 0)
        int num_args = pending_params.size() - 1;
        
        emit_comment("Printf: format string + " + to_string(num_args) + " arguments");
        
        // Load format string into $a0 (first argument, at index 0)
        // Format string is ALWAYS a pointer (integer), never a float
        string format_param = pending_params[0];
        emit_comment("DEBUG: format_param = '" + format_param + "', first char = " + (format_param.empty() ? "EMPTY" : to_string((int)format_param[0])));
        
        // Check if it's a string literal
        if (!format_param.empty() && format_param[0] == '"') {
            // It's a string literal - add it and load its address
            string str_label = add_string_literal(format_param);
            emit("la $a0, " + str_label);
            emit_comment("Load format string literal address");
        } else {
            // It's a variable containing a string address
            // Load from memory first (in case it's been spilled)
            emit_comment("DEBUG: format_param is a variable, not a string literal");
            int fmt_offset = get_offset(format_param);
            if (fmt_offset != 0) {
                emit("lw $a0, " + to_string(fmt_offset) + "($fp)");
                emit_comment("Load format string address from memory at " + to_string(fmt_offset) + "($fp)");
            } else {
                // Try to get it from register
                string fmt_reg = ensure_in_register(format_param);
                // Make sure it's not a float register
                if (fmt_reg.find("$f") == 0) {
                    emit_comment("ERROR: Format string in float register!");
                } else if (fmt_reg != "$a0") {
                    emit("move $a0, " + fmt_reg);
                }
            }
        }
        
        // Store variadic arguments on stack if present
        // The library function expects them at specific offsets from $sp
        // Arguments are in pending_params: [0]=format, [1]=arg1, [2]=arg2, ...
        // We need to store args 1..n on the stack
        
        if (num_args > 0) {
            emit_comment("Store variadic arguments on stack");
            // Allocate stack space
            emit("addiu $sp, $sp, " + to_string(-4 * num_args));
            
            // Store each argument (skip index 0 which is the format string)
            for (int i = 0; i < num_args; i++) {
                string arg = pending_params[i + 1];  // +1 to skip format string
                emit_comment("Arg " + to_string(i) + ": " + arg);
                
                // Check if it's a float
                bool is_float_param = is_variable_float(arg.c_str()) || 
                                     (arg.find('.') != string::npos);
                
                if (is_float_param) {
                    string arg_freg = ensure_in_float_register(arg);
                    emit("swc1 " + arg_freg + ", " + to_string(i * 4) + "($sp)");
                } else {
                    bool is_constant = !arg.empty() && (isdigit(arg[0]) || arg[0] == '-');
                    if (is_constant) {
                        emit("li $t0, " + arg);
                        emit("sw $t0, " + to_string(i * 4) + "($sp)");
                    } else {
                        string arg_reg = ensure_in_register(arg);
                        emit("sw " + arg_reg + ", " + to_string(i * 4) + "($sp)");
                    }
                }
            }
        }
        
        // Call library function
        emit("jal __lib_printf");
        
        // Restore stack if we allocated space
        if (num_args > 0) {
            emit("addiu $sp, $sp, " + to_string(4 * num_args));
            emit_comment("Deallocate variadic args space");
        }
        
        emit_comment("=== End printf ===");
        pending_params.clear();
        return;
    }
    if (func_name == "printf") {
        emit_comment("=== Built-in printf function ===");
        
        // Process parameters (they're in pending_params in reverse order)
        vector<string> params;
        for (int i = pending_params.size() - 1; i >= 0; i--) {
            params.push_back(pending_params[i]);
        }
        pending_params.clear();
        
        if (params.empty()) {
            emit_comment("ERROR: printf called with no arguments");
            return;
        }
        
        // First parameter is the format string
        string format_param = params[0];
        
        // Check if it's a string literal or a variable containing a string address
        if (!format_param.empty() && format_param[0] == '"') {
            // It's a direct string literal - add it and get label
            string str_label = add_string_literal(format_param);
            emit("la $a0, " + str_label);
            emit_comment("Load format string address");
        } else {
            // It's a variable containing string address
            string str_reg = ensure_in_register(format_param);
            if (str_reg != "$a0") {
                emit("move $a0, " + str_reg);
            }
            emit_comment("Format string address in $a0");
        }
        
        // For now, implement simple printf that only prints integers
        // printf("format", value1, value2, ...)
        // We'll print each value as an integer
        
        // Print the format string first (syscall 4)
        emit("li $v0, 4");
        emit_comment("Syscall 4: print string");
        emit("syscall");
        
        // Print each subsequent argument as an integer
        for (size_t i = 1; i < params.size(); i++) {
            string param = params[i];
            
            // Get parameter value into $a0
            bool is_constant = !param.empty() && (isdigit(param[0]) || param[0] == '-');
            
            if (is_constant) {
                emit("li $a0, " + param);
                emit_comment("Load integer constant " + param);
            } else {
                string param_reg = ensure_in_register(param);
                if (param_reg != "$a0") {
                    emit("move $a0, " + param_reg);
                }
                emit_comment("Load integer value from " + param);
            }
            
            // Print integer (syscall 1)
            emit("li $v0, 1");
            emit_comment("Syscall 1: print integer");
            emit("syscall");
        }
        
        emit_comment("=== End printf ===");
        return;  // Don't do normal function call processing
    }
    
    // Process parameters (they're in pending_params in reverse order)
    // Reverse them to get correct order: first param at index 0
    vector<string> params;
    // for (int i = pending_params.size() - 1; i >= 0; i--) {
    //     params.push_back(pending_params[i]);
    // }
    for(int i=0; i < pending_params.size(); i++) {
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
    
    // Pass first 4 params in $a0-$a3 (or $f12-$f15 for floats) AND store on stack
    // Params 5+ only on stack
    for (int i = 0; i < num_args; i++) {
        string param = params[i];
        
        // Check if parameter is float
        bool is_float_param = is_variable_float(param.c_str()) || 
                              (param.find('.') != string::npos);
        
        if (is_float_param) {
            // Float parameter
            emit_comment("DEBUG: Param " + to_string(i) + " is float");
            
            // Get parameter value into a float register
            // Create a temporary TAC operand for the parameter
            TACOperand* param_operand = new TACOperand(TAC_OPERAND_IDENTIFIER, param);
            string param_freg = load_operand_to_register(param_operand);
            delete param_operand;
            
            emit_comment("DEBUG: Float param " + to_string(i) + " (" + param + ") in " + param_freg);
            
            // Store on stack
            // offset is size of all params - (i * 4) + 4
            int stack_offset =  (i * 4);
            emit("s.s " + param_freg + ", " + to_string(stack_offset) + "($sp)");
            emit_comment("DEBUG: Stored float param " + to_string(i) + " on stack at " + to_string(stack_offset) + "($sp)");
            
            // Also copy to $f12-$f15 for first 4 float params
            if (i < 4) {
                string arg_freg = "$f" + to_string(12 + i);
                if (param_freg != arg_freg) {
                    emit("mov.s " + arg_freg + ", " + param_freg);
                    emit_comment("DEBUG: Copied float param " + to_string(i) + " to " + arg_freg);
                }
            }
        } else {
            // Integer parameter
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
            //int stack_offset = 8 + (i * 4);
            int stack_offset =  (i * 4);
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
    }
    
    // Call the function
    emit("jal " + func_name);
    emit_comment("DEBUG: Called " + func_name);
    
    // Deallocate parameter space after call returns
    if (param_space > 0) {
        emit("addiu $sp, $sp, " + to_string(param_space));
        emit_comment("DEBUG: Deallocate " + to_string(param_space) + " bytes of parameter space");
    }
    
    // Get return value from $v0 or $f0 (if there's a result)
    if (instr->result) {
        string dest = instr->result->value;
        
        // Check if return value is float
        bool dest_is_float = is_variable_float(dest.c_str());
        
        if (dest_is_float) {
            // Float return value in $f0
            string dest_freg = reg_allocator.allocate_float_reg();
            
            emit("mov.s " + dest_freg + ", $f0");
            emit_comment("DEBUG: Float return value from $f0 to " + dest_freg);
            
            // Update descriptors
            reg_desc.add_var_to_reg(dest_freg, dest);
            storage_desc.set_location(dest, dest_freg);
            reg_allocator.mark_dirty(dest_freg);
            
            emit_comment("DEBUG: " + dest + " = return value in " + dest_freg + " (float, dirty)");
        } else {
            // Integer return value in $v0
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
    
    // IMPORTANT: After a function call, all caller-saved registers ($t0-$t9, $a0-$a3) 
    // are potentially clobbered. We already spilled them before the call, but we need
    // to make sure BOTH descriptors don't incorrectly think variables are still in these registers.
    // Clear all $t and $a registers from descriptors (except the one holding the return value if any)
    for (int i = 0; i <= 9; i++) {
        string treg = "$t" + to_string(i);
        // Skip the register holding the return value
        if (instr->result && storage_desc.get_register(instr->result->value) == treg) {
            continue;
        }
        // Get all variables that think they're in this register
        set<string> vars_in_reg = reg_desc.get_vars_in_reg(treg);
        // Remove this register from their storage descriptor entries
        for (const string& var : vars_in_reg) {
            storage_desc.remove_location(var, treg);
        }
        // Clear this register from reg descriptor
        reg_desc.clear_reg(treg);
    }
    for (int i = 0; i <= 3; i++) {
        string areg = "$a" + to_string(i);
        // Get all variables that think they're in this register
        set<string> vars_in_reg = reg_desc.get_vars_in_reg(areg);
        // Remove this register from their storage descriptor entries
        for (const string& var : vars_in_reg) {
            storage_desc.remove_location(var, areg);
        }
        // Clear this register from reg descriptor
        reg_desc.clear_reg(areg);
    }
}

void MIPSGenerator::translate_return(TACInstruction* instr) {
    // TAC: return <value>
    
    // ===== IMPORTANT: Spill ALL dirty registers before return =====
    emit_comment("=== Spilling all dirty registers before return ===");
    set<string> dirty_regs = reg_allocator.get_dirty_regs();
    
    for (const string& reg : dirty_regs) {
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        
        for (const string& var : vars) {
            // Spill to memory
            int offset = get_offset(var);
            
            // Check if it's a float register
            if (reg.length() > 2 && reg[1] == 'f') {
                emit("s.s " + reg + ", " + to_string(offset) + "($fp)");
                emit_comment("DEBUG: Spilled float " + var + " from " + reg + " to memory");
            } else {
                emit("sw " + reg + ", " + to_string(offset) + "($fp)");
                emit_comment("DEBUG: Spilled " + var + " from " + reg + " to memory");
            }
            
            // Update storage descriptor
            storage_desc.set_location(var, "memory:" + to_string(offset) + "($fp)");
        }
        
        // Clear dirty flag
        reg_allocator.clear_dirty(reg);
    }
    
    if (instr->result && instr->result->type != TAC_OPERAND_EMPTY) {
        string ret_val = instr->result->value;
        emit_comment("return " + ret_val);
        
        // Check if return value is float
        bool is_float_return = is_operand_float(instr->result);
        
        if (is_float_return) {
            // Float return value - put in $f0
            emit_comment("DEBUG: Returning float value");
            
            // Get return value into a float register
            string ret_freg = load_operand_to_register(instr->result);
            emit_comment("DEBUG: " + ret_val + " in " + ret_freg);
            
            // Move to $f0 if not already there
            if (ret_freg != "$f0") {
                emit("mov.s $f0, " + ret_freg);
                emit_comment("DEBUG: Moved float return value to $f0");
            }
        } else {
            // Integer return value - put in $v0
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
    
    // Check if variable is global/static
    if (is_global_or_static(var)) {
        // Load from global data section using offset from $gp
        int offset = get_global_offset(var);
        emit("lw " + reg + ", " + to_string(offset) + "($gp)");
        emit_comment("DEBUG: Loaded global/static " + var + " from " + to_string(offset) + "($gp)");
    } else {
        // Load from stack frame using $fp
        int offset = get_offset(var);
        emit("lw " + reg + ", " + to_string(offset) + "($fp)");
        emit_comment("DEBUG: Loaded " + var + " from memory at " + to_string(offset) + "($fp)");
    }
    
    reg_desc.add_var_to_reg(reg, var);
    storage_desc.add_location(var, reg);
    
    return reg;
}

string MIPSGenerator::get_reg(const string& var) {
    return ensure_in_register(var);
}

string MIPSGenerator::ensure_in_float_register(const string& var) {
    // Check if variable is already in a float register
    if (storage_desc.is_in_register(var)) {
        string reg = storage_desc.get_register(var);
        if (reg[1] == 'f') {  // It's already in a float register
            return reg;
        }
    }
    
    // Need to load from memory into float register
    string freg = reg_allocator.allocate_float_reg();
    
    // Check if variable is global/static
    if (is_global_or_static(var)) {
        // Load from global data section using offset from $gp
        int offset = get_global_offset(var);
        emit("l.s " + freg + ", " + to_string(offset) + "($gp)");
        emit_comment("DEBUG: Loaded global/static float " + var + " from " + to_string(offset) + "($gp) into " + freg);
    } else {
        // Load from stack frame using $fp
        int offset = get_offset(var);
        emit("l.s " + freg + ", " + to_string(offset) + "($fp)");
        emit_comment("DEBUG: Loaded float " + var + " from " + to_string(offset) + "($fp) into " + freg);
    }
    
    // Update descriptors
    reg_desc.add_var_to_reg(freg, var);
    storage_desc.set_location(var, freg);
    
    return freg;
}

string MIPSGenerator::load_operand_to_register(TACOperand* operand) {
    // Load an operand (constant, variable, or temp) into a register
    // Returns the register containing the value
    
    if (!operand) {
        emit_comment("ERROR: Null operand in load_operand_to_register");
        return "$t0";  // Fallback
    }
    
    string value = operand->value;
    bool is_float = is_operand_float(operand);
    
    // Handle constants
    if (operand->type == TAC_OPERAND_CONSTANT) {
        if (is_float) {
            // Float constant - load from data section
            // MIPS doesn't support loading float immediates directly
            // We need to store the constant in data section and load it
            string freg = reg_allocator.allocate_float_reg();
            
            // Create a unique label for this float constant
            string float_label = "float_const_" + value;
            // Replace dots and minus signs for valid labels
            for (char& c : float_label) {
                if (c == '.') c = '_';
                if (c == '-') c = 'n';
            }
            
            // Add to data section (we'll need a map for float constants)
            // For now, use a simple approach: load via la and l.s
            // This requires adding float constants to data section
            
            // Simplified: Load the float value as a comment showing the value
            // and use li.s pseudo-instruction if supported, otherwise load from memory
            emit("# Loading float constant: " + value);
            emit("li.s " + freg + ", " + value);
            emit_comment("DEBUG: Loaded float constant " + value + " into " + freg);
            
            return freg;
        } else {
            // Integer constant
            string reg = allocate_register_for_constant();
            emit("li " + reg + ", " + value);
            emit_comment("DEBUG: Loaded constant " + value + " into " + reg);
            
            // Track with a unique key so the register won't be reused during this expression
            // Use a unique identifier based on instruction index to avoid collisions
            string unique_const_key = "<CONST_" + to_string(current_instruction_index) + "_" + value + ">";
            reg_desc.add_var_to_reg(reg, unique_const_key);
            storage_desc.set_location(unique_const_key, reg);
            // Don't mark as dirty - constants don't need to be written back
            
            return reg;
        }
    }
    
    // Handle string literals
    if (operand->type == TAC_OPERAND_STRING) {
        string str_label = add_string_literal(value);
        string reg = allocate_register_with_spilling();
        emit("la " + reg + ", " + str_label);
        emit_comment("DEBUG: Loaded address of string \"" + value + "\" into " + reg);
        
        // Mark register as containing a constant address
        reg_desc.add_var_to_reg(reg, "<STRING_ADDR>");
        storage_desc.set_location("<STRING_ADDR>", reg);
        
        return reg;
    }
    
    // Check if it's a numeric literal (workaround for parser not always setting CONSTANT type)
    bool is_numeric = !value.empty();
    size_t start = 0;
    if (!value.empty() && (value[0] == '-' || value[0] == '+')) start = 1;
    
    // Check for float literal (contains '.')
    bool has_dot = value.find('.') != string::npos;
    
    if (!has_dot) {
        for (size_t i = start; i < value.length(); i++) {
            if (!isdigit(value[i])) {
                is_numeric = false;
                break;
            }
        }
    }
    
    if (is_numeric && value.length() > start && has_dot) {
        // Float literal
        string freg = reg_allocator.allocate_float_reg();
        
        // Use li.s pseudo-instruction to load float constant
        emit("# Loading float literal: " + value);
        emit("li.s " + freg + ", " + value);
        emit_comment("DEBUG: Loaded float literal " + value + " into " + freg);
        
        return freg;
    } else if (is_numeric && value.length() > start) {
        // Integer literal
        string reg = allocate_register_for_constant();
        emit("li " + reg + ", " + value);
        emit_comment("DEBUG: Loaded numeric literal " + value + " into " + reg);
        
        // Track with a unique key so the register won't be reused during this expression
        string unique_const_key = "<CONST_" + to_string(current_instruction_index) + "_" + value + ">";
        reg_desc.add_var_to_reg(reg, unique_const_key);
        storage_desc.set_location(unique_const_key, reg);
        
        return reg;
    }
    
    // It's a variable or temp - check if float
    if (is_float) {
        return ensure_in_float_register(value);
    } else {
        return ensure_in_register(value);
    }
}
//implement the function get_next_use_distance
// Rewrite get_next_use_distance to use next_use_table:
int MIPSGenerator::get_next_use_distance(const string& var) {
    // Check if current instruction has next-use info for this variable
    if (next_use_table.find(current_instruction_index) == next_use_table.end()) {
        return INT_MAX;  // No info available
    }
    
    map<string, int>& current_info = next_use_table[current_instruction_index];
    
    if (current_info.find(var) == current_info.end()) {
        return INT_MAX;  // Variable not in next-use table
    }
    
    int next_use_index = current_info[var];
    
    if (next_use_index == -1) {
        return INT_MAX;  // Variable has no next use (dead)
    }
    
    // Return DISTANCE (not absolute index)
    return next_use_index - current_instruction_index;
}

string MIPSGenerator::select_victim_by_next_use() {
    // Select the register whose variable has the farthest next use
    // Avoid registers with constants from the current instruction
    set<string> all_temp_regs = {"$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9"};
    string current_const_prefix = "<CONST_" + to_string(current_instruction_index) + "_";
    
    string victim_reg;
    int farthest_next_use = -1;
    
    for (const string& reg : all_temp_regs) {
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        if (vars.empty()) {
            // Found a free register - just return it
            return reg;
        }
        
        // Check if this register has a constant from the current instruction
        bool has_current_const = false;
        for (const string& var : vars) {
            if (var.find(current_const_prefix) == 0) {
                has_current_const = true;
                break;
            }
        }
        
        // Skip registers with constants from the current instruction
        if (has_current_const) {
            continue;
        }
        
        // For each variable in this register, find its next use
        for (const string& var : vars) {
            int next_use = get_next_use_distance(var);
            if (next_use > farthest_next_use) {
                farthest_next_use = next_use;
                victim_reg = reg;
            }
        }
    }
    
    return victim_reg;
}

string MIPSGenerator::allocate_register_for_constant() {
    // Special allocator for constants - finds an available register
    // Prefers truly empty registers, then those with only old constants
    set<string> all_temp_regs = {"$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9"};
    
    // First pass: look for truly empty registers
    for (const string& reg : all_temp_regs) {
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        if (vars.empty()) {
            return reg;
        }
    }
    
    // Second pass: look for registers with only constants from DIFFERENT instructions
    for (const string& reg : all_temp_regs) {
        set<string> vars = reg_desc.get_vars_in_reg(reg);
        bool can_reuse = true;
        for (const string& v : vars) {
            // Check if it's a constant from the CURRENT instruction - if so, skip this register
            string current_prefix = "<CONST_" + to_string(current_instruction_index) + "_";
            if (v.find(current_prefix) == 0) {
                can_reuse = false;
                break;
            }
            // If it's not a constant at all, can't reuse
            if (v.find("<CONST_") != 0 && v != "<STRING_ADDR>") {
                can_reuse = false;
                break;
            }
        }
        if (can_reuse) {
            // Clear out the old constants and return this register
            for (const string& v : vars) {
                reg_desc.remove_var_from_reg(reg, v);
                storage_desc.remove_location(v, reg);
            }
            return reg;
        }
    }
    
    // No suitable registers - use the standard allocator with spilling
    return allocate_register_with_spilling();
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
string victim_reg = select_victim_by_next_use();  // REPLACE WITH THIS
    
    emit_comment("DEBUG: Spilling register " + victim_reg + " due to register pressure");
    
    // Spill all variables in the victim register (including temps!)
    set<string> vars = reg_desc.get_vars_in_reg(victim_reg);
    for (const string& var : vars) {
        // Skip constants - they don't need to be spilled
        if (var.find("<CONST_") == 0 || var == "<STRING_ADDR>") {
            emit_comment("DEBUG: Skipping spill of constant in " + victim_reg);
            continue;
        }
        
        // Spill ALL variables (both real variables and temps) if dirty
        if (reg_allocator.is_dirty(victim_reg)) {
            // Check if variable is global/static
            if (is_global_or_static(var)) {
                int offset = get_global_offset(var);
                emit("sw " + victim_reg + ", " + to_string(offset) + "($gp)");
                emit_comment("DEBUG: Spilled global/static " + var + " from " + victim_reg + " to " + to_string(offset) + "($gp)");
                storage_desc.add_location(var, "memory:" + to_string(offset) + "($gp)");
            } else {
                int offset = get_offset(var);
                emit("sw " + victim_reg + ", " + to_string(offset) + "($fp)");
                emit_comment("DEBUG: Spilled " + var + " from " + victim_reg + " to memory at " + to_string(offset) + "($fp)");
                storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
            }
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
    
    // Check if this is a float register
    bool is_float_reg = (reg.length() > 2 && reg[1] == 'f');
    
    for (const string& var : vars) {
        // Skip constants - they don't need to be spilled
        if (var.find("<CONST_") == 0 || var == "<STRING_ADDR>") {
            continue;
        }
        
        // Only spill if not already in memory
        if (storage_desc.is_only_in_register(var)) {
            // Check if variable is global/static
            if (is_global_or_static(var)) {
                int offset = get_global_offset(var);
                if (is_float_reg) {
                    emit("s.s " + reg + ", " + to_string(offset) + "($gp)");
                    emit_comment("DEBUG: Spilled global/static float " + var + " from " + reg + " to " + to_string(offset) + "($gp)");
                } else {
                    emit("sw " + reg + ", " + to_string(offset) + "($gp)");
                    emit_comment("DEBUG: Spilled global/static " + var + " from " + reg + " to " + to_string(offset) + "($gp)");
                }
                storage_desc.add_location(var, "memory:" + to_string(offset) + "($gp)");
            } else {
                int offset = get_offset(var);
                
                if (is_float_reg) {
                    emit("s.s " + reg + ", " + to_string(offset) + "($fp)");
                    emit_comment("DEBUG: Spilled float " + var + " from " + reg + " to memory");
                } else {
                    emit("sw " + reg + ", " + to_string(offset) + "($fp)");
                    emit_comment("DEBUG: Spilled " + var + " from " + reg + " to memory");
                }
                storage_desc.add_location(var, "memory:" + var);
            }
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
    
    // Check if variable is global/static
    if (is_global_or_static(var_name)) {
        int offset = get_global_offset(var_name);
        emit("sw " + reg + ", " + to_string(offset) + "($gp)");
        emit_comment("DEBUG: Stored to global/static " + var_name + " at " + to_string(offset) + "($gp)");
        storage_desc.add_location(var_name, "memory:" + to_string(offset) + "($gp)");
    } else {
        int offset = get_offset(var_name);
        emit("sw " + reg + ", " + to_string(offset) + "($fp)");
        emit_comment("DEBUG: Stored to " + var_name + " at " + to_string(offset) + "($fp)");
        storage_desc.add_location(var_name, "memory:" + var_name);
    }
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

bool MIPSGenerator::is_operand_float(TACOperand* operand) {
    if (!operand) return false;
    
    // Check if it's a float literal
    if (operand->type == TAC_OPERAND_CONSTANT) {
        string val = operand->value;
        // Check if it contains a decimal point
        return val.find('.') != string::npos;
    }
    
    // Check if it's a variable or temp with float type
    if (operand->type == TAC_OPERAND_IDENTIFIER || 
        operand->type == TAC_OPERAND_TEMP_VAR) {
        // IMPORTANT: Pointers are NOT floats, even if they point to floats
        // Check pointer level first - if it's a pointer (level > 0), it's NOT a float
        int ptr_level = get_variable_pointer_level(operand->value.c_str());
        if (ptr_level > 0) {
            return false;  // Pointers are stored in CPU registers, not FPU registers
        }
        
        // Only non-pointer variables can be floats
        return is_variable_float(operand->value.c_str());
    }
    
    return false;
}

bool MIPSGenerator::is_operand_char(TACOperand* operand) {
    if (!operand) return false;
    
    // Check if it's a char literal (single character in quotes)
    if (operand->type == TAC_OPERAND_CONSTANT) {
        string val = operand->value;
        // Char literals are typically single characters or small integers
        // For now, we'll rely on variable type checking
        return false;
    }
    
    // Check if it's a variable or temp with char type
    if (operand->type == TAC_OPERAND_IDENTIFIER || 
        operand->type == TAC_OPERAND_TEMP_VAR) {
        // Check pointer level first - if it's a pointer (level > 0), it's NOT a char
        int ptr_level = get_variable_pointer_level(operand->value.c_str());
        if (ptr_level > 0) {
            return false;  // Pointers are stored in CPU registers
        }
        
        // Only non-pointer variables can be chars
        return is_variable_char(operand->value.c_str());
    }
    
    return false;
}


void MIPSGenerator::emit(const string& instruction) {
    emit_to_buffer(instruction);
}
void MIPSGenerator::emit_to_buffer(const string& instruction) {
    instruction_buffer.push_back(instruction);
    
    if (instruction_buffer.size() >= peephole_window_size) {
        apply_peephole_optimizations();
        
        // Emit the first instruction
output << "    " << instruction_buffer[0] << "\n";
if (clean_output) {
    *clean_output << "    " << instruction_buffer[0] << "\n";
}        
        instruction_buffer.erase(instruction_buffer.begin());
    }
}
void MIPSGenerator::emit_direct(const string& instruction) {
    // Bypass buffer for structural code (prologue/epilogue/labels)
    output << "    " << instruction << "\n";
    if (clean_output) {
        *clean_output << "    " << instruction << "\n";
    }
}
void MIPSGenerator::flush_instruction_buffer() {
    while (!instruction_buffer.empty()) {
        apply_peephole_optimizations();
        
output << "    " << instruction_buffer[0] << "\n";
if (clean_output) {
    *clean_output << "    " << instruction_buffer[0] << "\n";
}        
        instruction_buffer.erase(instruction_buffer.begin());
    }
}
void MIPSGenerator::apply_peephole_optimizations() {
    if (instruction_buffer.size() < 2) return;
    
    bool changed = true;
    while (changed) {
        changed = false;
        changed |= optimize_redundant_moves();
        changed |= optimize_load_store_pairs();
        changed |= optimize_arithmetic_identity();
        changed |= optimize_strength_reduction();
        changed |= optimize_branch_chains();
    }
}
bool MIPSGenerator::optimize_redundant_moves() {
    if (instruction_buffer.size() < 2) return false;
    
    // Pattern 1: move $tx, $ty followed by move $ty, $tx
    // Pattern 2: move $tx, $ty followed by move $tx, $ty (duplicate)
    
    for (size_t i = 0; i < instruction_buffer.size() - 1; i++) {
        string instr1 = instruction_buffer[i];
        string instr2 = instruction_buffer[i + 1];
        
        // Parse first instruction
        if (instr1.find("move ") == 0) {
            // Extract registers: "move $t0, $t1"
            size_t comma = instr1.find(',');
            if (comma == string::npos) continue;
            
            string dest1 = instr1.substr(5, comma - 5);  // "$t0"
            string src1 = instr1.substr(comma + 2);      // "$t1"
            
            // Trim whitespace
            dest1.erase(0, dest1.find_first_not_of(" \t"));
            dest1.erase(dest1.find_last_not_of(" \t") + 1);
            src1.erase(0, src1.find_first_not_of(" \t"));
            src1.erase(src1.find_last_not_of(" \t") + 1);
            
            // Check for Pattern 1: move $tx, $ty then move $ty, $tx
            if (instr2 == "move " + src1 + ", " + dest1) {
                instruction_buffer.erase(instruction_buffer.begin() + i + 1);
                emit_comment("PEEPHOLE: Removed redundant reverse move");
                return true;
            }
            
            // Check for Pattern 2: duplicate move
            if (instr2 == instr1) {
                instruction_buffer.erase(instruction_buffer.begin() + i + 1);
                emit_comment("PEEPHOLE: Removed duplicate move");
                return true;
            }
        }
    }
    
    return false;
}
bool MIPSGenerator::optimize_load_store_pairs() {
    if (instruction_buffer.size() < 2) return false;
    
    // Pattern: lw $tx, offset($fp) followed by sw $tx, offset($fp)
    // Only optimize if there's no modification of $tx between them
    
    for (size_t i = 0; i < instruction_buffer.size() - 1; i++) {
        string instr1 = instruction_buffer[i];
        string instr2 = instruction_buffer[i + 1];
        
        // Check for load-store pattern
        if (instr1.find("lw ") == 0 && instr2.find("sw ") == 0) {
            // Parse: "lw $t0, -4($fp)" and "sw $t0, -4($fp)"
            size_t comma1 = instr1.find(',');
            size_t comma2 = instr2.find(',');
            
            if (comma1 == string::npos || comma2 == string::npos) continue;
            
            string reg1 = instr1.substr(3, comma1 - 3);
            string loc1 = instr1.substr(comma1 + 2);
            
            string reg2 = instr2.substr(3, comma2 - 3);
            string loc2 = instr2.substr(comma2 + 2);
            
            // Trim whitespace
            reg1.erase(0, reg1.find_first_not_of(" \t"));
            reg1.erase(reg1.find_last_not_of(" \t") + 1);
            loc1.erase(0, loc1.find_first_not_of(" \t"));
            loc1.erase(loc1.find_last_not_of(" \t") + 1);
            reg2.erase(0, reg2.find_first_not_of(" \t"));
            reg2.erase(reg2.find_last_not_of(" \t") + 1);
            loc2.erase(0, loc2.find_first_not_of(" \t"));
            loc2.erase(loc2.find_last_not_of(" \t") + 1);
            
            // If same register and same location, remove the store
            if (reg1 == reg2 && loc1 == loc2) {
                instruction_buffer.erase(instruction_buffer.begin() + i + 1);
                emit_comment("PEEPHOLE: Removed redundant store after load");
                return true;
            }
        }
    }
    
    return false;
}
bool MIPSGenerator::optimize_arithmetic_identity() {
    if (instruction_buffer.empty()) return false;
    
    for (size_t i = 0; i < instruction_buffer.size(); i++) {
        string instr = instruction_buffer[i];
        
        // Pattern: add $tx, $ty, $zero → move $tx, $ty
        if (instr.find("add ") == 0 && instr.find("$zero") != string::npos) {
            // Parse: "add $t0, $t1, $zero"
            size_t comma1 = instr.find(',');
            size_t comma2 = instr.find(',', comma1 + 1);
            
            if (comma1 != string::npos && comma2 != string::npos) {
                string dest = instr.substr(4, comma1 - 4);
                string src = instr.substr(comma1 + 2, comma2 - comma1 - 2);
                
                // Trim
                dest.erase(0, dest.find_first_not_of(" \t"));
                dest.erase(dest.find_last_not_of(" \t") + 1);
                src.erase(0, src.find_first_not_of(" \t"));
                src.erase(src.find_last_not_of(" \t") + 1);
                
                instruction_buffer[i] = "move " + dest + ", " + src;
                emit_comment("PEEPHOLE: Simplified add with $zero to move");
                return true;
            }
        }

// ALSO check: add $tx, $ty, $tz where $tz contains 0
if (instr.find("add ") == 0) {
    size_t lastComma = instr.rfind(',');
    if (lastComma != string::npos) {
        string lastOp = instr.substr(lastComma + 1);
        lastOp.erase(0, lastOp.find_first_not_of(" \t"));
        lastOp.erase(lastOp.find_last_not_of(" \t") + 1);
        
        // Check if there's a "li lastOp, 0" in the buffer
        bool is_zero = false;
        for (const string& prev : instruction_buffer) {
            if (prev == "li " + lastOp + ", 0") {
                is_zero = true;
                break;
            }
        }
        
        if (is_zero) {
            size_t comma1 = instr.find(',');
            string dest = instr.substr(4, comma1 - 4);
            string src = instr.substr(comma1 + 2, lastComma - comma1 - 2);
            
            dest.erase(0, dest.find_first_not_of(" \t"));
            dest.erase(dest.find_last_not_of(" \t") + 1);
            src.erase(0, src.find_first_not_of(" \t"));
            src.erase(src.find_last_not_of(" \t") + 1);
            
            instruction_buffer[i] = "move " + dest + ", " + src;
            emit_comment("PEEPHOLE: Simplified add with 0 to move");
            return true;
        }
    }
}
        
        // Pattern: mul $tx, $ty, 1 → move $tx, $ty
        if (instr.find("mul ") == 0) {
            size_t lastComma = instr.rfind(',');
            if (lastComma != string::npos) {
                string lastOp = instr.substr(lastComma + 1);
                lastOp.erase(0, lastOp.find_first_not_of(" \t"));
                lastOp.erase(lastOp.find_last_not_of(" \t") + 1);

                bool is_one = false;
        for (const string& prev : instruction_buffer) {
            if (prev == "li " + lastOp + ", 1") {
                is_one = true;
                break;
            }
        }
        
        if (is_one) {
                    size_t comma1 = instr.find(',');
                    string dest = instr.substr(4, comma1 - 4);
                    string src = instr.substr(comma1 + 2, lastComma - comma1 - 2);
                    
                    dest.erase(0, dest.find_first_not_of(" \t"));
                    dest.erase(dest.find_last_not_of(" \t") + 1);
                    src.erase(0, src.find_first_not_of(" \t"));
                    src.erase(src.find_last_not_of(" \t") + 1);
                    
                    instruction_buffer[i] = "move " + dest + ", " + src;
                    emit_comment("PEEPHOLE: Simplified mul by 1 to move");
                    return true;
                }
            }
        }
    }
    
    return false;
}
bool MIPSGenerator::optimize_strength_reduction() {
    if (instruction_buffer.empty()) return false;
    
    for (size_t i = 0; i < instruction_buffer.size(); i++) {
        string instr = instruction_buffer[i];
        
        // Pattern: mul $tx, $ty, <power_of_2> → sll $tx, $ty, <log2>
        if (instr.find("mul ") == 0) {
            size_t lastComma = instr.rfind(',');
            if (lastComma != string::npos) {
                string multiplier = instr.substr(lastComma + 1);
                multiplier.erase(0, multiplier.find_first_not_of(" \t"));
                multiplier.erase(multiplier.find_last_not_of(" \t") + 1);
                
                // Check if it's a power of 2
                int mult = 0;
                try {
                    mult = stoi(multiplier);
                } catch (...) {
                    continue;
                }
                
                // Check if power of 2 and get shift amount
                if (mult > 0 && (mult & (mult - 1)) == 0) {
                    int shift = 0;
                    int temp = mult;
                    while (temp > 1) {
                        temp >>= 1;
                        shift++;
                    }
                    
                    size_t comma1 = instr.find(',');
                    string dest = instr.substr(4, comma1 - 4);
                    string src = instr.substr(comma1 + 2, lastComma - comma1 - 2);
                    
                    dest.erase(0, dest.find_first_not_of(" \t"));
                    dest.erase(dest.find_last_not_of(" \t") + 1);
                    src.erase(0, src.find_first_not_of(" \t"));
                    src.erase(src.find_last_not_of(" \t") + 1);
                    
                    instruction_buffer[i] = "sll " + dest + ", " + src + ", " + to_string(shift);
                    emit_comment("PEEPHOLE: Strength reduction mul → sll");
                    return true;
                }
            }
        }
        
        // Pattern: div $tx, $ty, <power_of_2> → sra $tx, $ty, <log2>
        if (instr.find("div ") == 0) {
            size_t lastComma = instr.rfind(',');
            if (lastComma != string::npos) {
                string divisor = instr.substr(lastComma + 1);
                divisor.erase(0, divisor.find_first_not_of(" \t"));
                divisor.erase(divisor.find_last_not_of(" \t") + 1);
                
                int div = 0;
                try {
                    div = stoi(divisor);
                } catch (...) {
                    continue;
                }
                
                if (div > 0 && (div & (div - 1)) == 0) {
                    int shift = 0;
                    int temp = div;
                    while (temp > 1) {
                        temp >>= 1;
                        shift++;
                    }
                    
                    size_t comma1 = instr.find(',');
                    string dest = instr.substr(4, comma1 - 4);
                    string src = instr.substr(comma1 + 2, lastComma - comma1 - 2);
                    
                    dest.erase(0, dest.find_first_not_of(" \t"));
                    dest.erase(dest.find_last_not_of(" \t") + 1);
                    src.erase(0, src.find_first_not_of(" \t"));
                    src.erase(src.find_last_not_of(" \t") + 1);
                    
                    instruction_buffer[i] = "sra " + dest + ", " + src + ", " + to_string(shift);
                    emit_comment("PEEPHOLE: Strength reduction div → sra");
                    return true;
                }
            }
        }
    }
    
    return false;
}
bool MIPSGenerator::optimize_branch_chains() {
    if (instruction_buffer.size() < 2) return false;
    
    // Pattern: beq $tx, $ty, L1 followed by L1: j L2
    // Optimization: Replace with beq $tx, $ty, L2
    
    // This is more complex and requires tracking labels
    // For now, leave as stub - implement only if you see this pattern frequently
    
    return false;
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
        
        // Check if this is a float register
        bool is_float_reg = (reg.length() > 2 && reg[1] == 'f');
        
        for (const string& var : vars) {
            // Skip constants - they don't need to be spilled
            if (var == "<CONSTANT>" || var == "<STRING_ADDR>") {
                emit_comment("DEBUG: Skipping spill of constant in " + reg);
                continue;
            }
            
            // Check if variable is global/static
            if (is_global_or_static(var)) {
                int offset = get_global_offset(var);
                if (is_float_reg) {
                    emit("s.s " + reg + ", " + to_string(offset) + "($gp)");
                    emit_comment("DEBUG: Spilled global/static float " + var + " from " + reg + " to " + to_string(offset) + "($gp)");
                } else {
                    emit("sw " + reg + ", " + to_string(offset) + "($gp)");
                    emit_comment("DEBUG: Spilled global/static " + var + " from " + reg + " to " + to_string(offset) + "($gp)");
                }
                storage_desc.add_location(var, "memory:" + to_string(offset) + "($gp)");
            } else {
                int offset = get_offset(var);
                
                if (is_float_reg) {
                    emit("s.s " + reg + ", " + to_string(offset) + "($fp)");
                    emit_comment("DEBUG: Spilled float " + var + " from " + reg + " to memory at " + to_string(offset) + "($fp)");
                } else {
                    emit("sw " + reg + ", " + to_string(offset) + "($fp)");
                    emit_comment("DEBUG: Spilled " + var + " from " + reg + " to memory at " + to_string(offset) + "($fp)");
                }
                storage_desc.add_location(var, "memory:" + to_string(offset) + "($fp)");
            }
        }
    }
    
    // Clear dirty bits after spilling
    reg_allocator.clear_all();
}

void MIPSGenerator::print_descriptors() {
    emit_comment("--- Register Descriptor ---");
    // Print which variables are in which registers
    set<string> all_regs = {"$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9", "$f0", "$f1", "$f2", "$f3", "$f4", "$f5", "$f6", "$f7", "$f8", "$f9",
                           "$f10", "$f11", "$f12", "$f13", "$f14", "$f15", "$f16", "$f17", "$f18", "$f19", "$f20", "$f21", "$f22", "$f23", "$f24", "$f25", "$f26", "$f27", "$f28", "$f29", "$f30", "$f31", "$v0", "$v1", "$a0", "$a1", "$a2", "$a3"};
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

// Global/Static Variable Helper Functions

bool MIPSGenerator::is_global_or_static(const string& var_name) {
    return is_variable_global(var_name.c_str()) || is_variable_static(var_name.c_str());
}

int MIPSGenerator::get_global_offset(const string& var_name) {
    auto it = global_var_offsets.find(var_name);
    if (it != global_var_offsets.end()) {
        return it->second;
    }
    // Variable not yet allocated in global space - allocate it now
    bool is_float = is_variable_float(var_name.c_str());
    return allocate_global_space(var_name, is_float);
}

int MIPSGenerator::allocate_global_space(const string& var_name, bool is_float) {
    // Check if already allocated
    auto it = global_var_offsets.find(var_name);
    if (it != global_var_offsets.end()) {
        return it->second;
    }
    
    // Allocate space (4 bytes for int/float, 8 bytes for double)
    int size = is_float ? 4 : 4;  // Simplified: assume 4 bytes for both
    int offset = next_global_offset;
    global_var_offsets[var_name] = offset;
    next_global_offset += size;
    
    
    emit_comment("Allocated global/static variable '" + var_name + "' at offset " + to_string(offset) + "($gp)");
    
    return offset;
}

// Declare extern C function from parser
extern "C" void update_global_offsets(const char* var_name, int offset);

void MIPSGenerator::update_symbol_table_offsets() {
    // Update parser's symbol table with actual global offsets
    for (const auto& pair : global_var_offsets) {
        update_global_offsets(pair.first.c_str(), pair.second);
    }
}
