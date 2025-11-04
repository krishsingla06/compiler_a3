#include "mips_generator.h"
#include "tac.h"
#include <iostream>
#include <iomanip>

// Extern declaration to access helper function from parser.y
extern "C" int get_variable_offset(const char* var_name);
int get_function_stack_frame_size(const string& mangledName);
/*
 * MIPS Stack Frame Layout:
 * 
 *   Higher Addresses
 *   ┌─────────────────────────┐
 *   │  Param 5, 6, 7...       │  +20($fp), +24($fp), ...  (if >4 params)
 *   ├─────────────────────────┤
 *   │  Param 4                │  +16($fp)
 *   ├─────────────────────────┤
 *   │  Param 3                │  +12($fp)
 *   ├─────────────────────────┤
 *   │  Param 2                │  +8($fp)
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
    : output(out), clean_output(clean_out) {
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
    
    // Data section
    output << ".data\n";
    if (clean_output) *clean_output << ".data\n";
    emit_comment("Global variables");
    output << "\n";
    if (clean_output) *clean_output << "\n";
    
    // Text section
    output << ".text\n";
    if (clean_output) *clean_output << ".text\n";
    output << ".globl main\n";
    if (clean_output) *clean_output << ".globl main\n";
    output << "\n";
    if (clean_output) *clean_output << "\n";
    
    // Process each TAC instruction
    for (size_t i = 0; i < tac_instructions.size(); i++) {
        TACInstruction* instr = tac_instructions[i];
        
        // Emit TAC as comment for debugging (using existing function from tac.h)
        emit_comment("TAC: " + get_TAC_instruction_string(instr));
        
        // Translate to MIPS
        translate_instruction(instr);
        
        output << "\n";
        if (clean_output) *clean_output << "\n";
    }
    
    emit_comment("End of code");
}

void MIPSGenerator::generate_data_section() {
    // Stub
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
    int total_frame = frame_size + 8;
    emit("addiu $sp, $sp, -" + to_string(total_frame));
    emit_comment("Allocate " + to_string(total_frame) + " bytes (8 for $ra+$fp, " + 
                 to_string(frame_size) + " for locals/temps)");
    
    // Step 2: Save return address at offset (frame_size + 4) from new $sp
    emit("sw $ra, " + to_string(frame_size + 4) + "($sp)");
    emit_comment("Save return address at " + to_string(frame_size + 4) + "($sp)");
    
    // Step 3: Save old frame pointer at offset (frame_size) from new $sp
    emit("sw $fp, " + to_string(frame_size) + "($sp)");
    emit_comment("Save old frame pointer at " + to_string(frame_size) + "($sp)");
    
    // Step 4: Set new frame pointer
    // $fp should point to where we saved old $fp
    emit("addiu $fp, $sp, " + to_string(frame_size));
    emit_comment("Set new frame pointer (points to saved old $fp)");
    
    emit_comment("=== End of Prologue ===");
    emit_comment("Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp");
    output << "\n";
    if (clean_output) *clean_output << "\n";
}

void MIPSGenerator::generate_function_epilogue(const string& func_name) {
    emit_comment("=== Function Epilogue for " + func_name + " ===");
    
    int frame_size = calculate_stack_frame_size(func_name);
    int total_frame = frame_size + 8;
    
    // Step 1: Move $sp back to where $fp is (where old $fp is saved)
    emit("move $sp, $fp");
    emit_comment("Move $sp to $fp (where old $fp is saved)");

    
    // Step 3: Restore return address from 4($sp)
    emit("lw $ra, 4($fp)");
    emit_comment("Restore return address");

    // Step 2: Restore old frame pointer from 0($sp) [which is 0($fp)]
    emit("lw $fp, 0($fp)");
    emit_comment("Restore old frame pointer");
    
    // Step 4: Pop the entire frame (deallocate the space we allocated in prologue)
    emit("addiu $sp, $sp, " + to_string(total_frame));
    emit_comment("Deallocate frame (" + to_string(total_frame) + " bytes)");
    
    // Step 5: Return to caller
    emit("jr $ra");
    emit_comment("Return to caller");
    
    emit_comment("=== End of Epilogue ===");
}

int MIPSGenerator::calculate_stack_frame_size(const string& func_name) {
    // Use external function to get stack frame size
    int frame_size = get_function_stack_frame_size(func_name);
    return frame_size;
}

void MIPSGenerator::translate_instruction(TACInstruction* instr) {
    if (!instr) return;
    
    // Emit label if this instruction has one
    if (instr->label && instr->label->type == TAC_OPERAND_LABEL) {
        emit_label("I" + instr->label->value);
    }
    
    // Debug: Print current descriptor state
    print_descriptors();
    
    // Handle different operation types based on flag and op
    // IMPORTANT: Check flags FIRST before checking op types!
    if (instr->flag == 1) {
        // Unconditional jump - basic block boundary
        emit_comment("Unconditional jump - spilling dirty registers");
        spill_all_dirty();
        translate_jump(instr);
    }
    else if (instr->flag == 2) {
        // Conditional jump: if arg1 op arg2 goto result
        emit_comment("Conditional jump - spilling dirty registers");
        spill_all_dirty();
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
    else if (instr->op.type == TAC_OPERATOR_FUNC_BEGIN) {
        emit_label(instr->result->value);
        emit_comment("Function: " + instr->result->value);
        current_function = instr->result->value;
        
        // Generate function prologue
        generate_function_prologue(current_function);
    }
    else if (instr->op.type == TAC_OPERATOR_FUNC_END) {
        // Basic block boundary - spill all dirty registers
        emit_comment("End of function - spilling dirty registers");
        spill_all_dirty();
        
        // Generate function epilogue
        generate_function_epilogue(current_function);
        
        emit_comment("End of function: " + current_function);
    }
    else if (instr->op.type == TAC_OPERATOR_CALL) {
        // Function call - spill dirty registers
        emit_comment("Function call - spilling dirty registers");
        spill_all_dirty();
        translate_call(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_RETURN) {
        // Return - spill dirty registers
        emit_comment("Return - spilling dirty registers");
        spill_all_dirty();
        translate_return(instr);
    }
    else if (instr->op.type == TAC_OPERATOR_FUNC_END) {
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
        // Source is in a register - just update descriptors!
        string src_reg = storage_desc.get_register(src);
        emit_comment("DEBUG: " + src + " already in " + src_reg);
        
        // Add dest to the same register (both variables share the register now)
        reg_desc.add_var_to_reg(src_reg, dest);
        storage_desc.add_location(dest, src_reg);
        
        // Mark register as dirty if dest is different from src
        if (dest != src) {
            reg_allocator.mark_dirty(src_reg);
            emit_comment("DEBUG: " + dest + " now also in " + src_reg + " (dirty)");
        }
    } else {
        // Source is not in register - need to load it first
        string src_reg = ensure_in_register(src);
        
        // Update descriptors
        reg_desc.add_var_to_reg(src_reg, dest);
        storage_desc.add_location(dest, src_reg);
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
    
    // Get operands into registers
    string reg1, reg2;
    
    // Handle first operand
    if (instr->arg1->type == TAC_OPERAND_CONSTANT) {
        reg1 = allocate_register_with_spilling();
        emit("li " + reg1 + ", " + src1);
        emit_comment("DEBUG: Loaded constant " + src1 + " into " + reg1);
    } else {
        reg1 = ensure_in_register(src1);
        emit_comment("DEBUG: " + src1 + " in " + reg1);
    }
    
    // Handle second operand
    if (instr->arg2->type == TAC_OPERAND_CONSTANT) {
        reg2 = allocate_register_with_spilling();
        emit("li " + reg2 + ", " + src2);
        emit_comment("DEBUG: Loaded constant " + src2 + " into " + reg2);
    } else {
        reg2 = ensure_in_register(src2);
        emit_comment("DEBUG: " + src2 + " in " + reg2);
    }
    
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
        
        // Get operands into registers
        string reg1, reg2;
        
        // Handle first operand
        if (instr->arg1->type == TAC_OPERAND_CONSTANT) {
            reg1 = allocate_register_with_spilling();
            emit("li " + reg1 + ", " + src1);
            emit_comment("DEBUG: Loaded constant " + src1 + " into " + reg1);
        } else {
            reg1 = ensure_in_register(src1);
            emit_comment("DEBUG: " + src1 + " in " + reg1);
        }
        
        // Handle second operand
        if (instr->arg2->type == TAC_OPERAND_CONSTANT) {
            reg2 = allocate_register_with_spilling();
            emit("li " + reg2 + ", " + src2);
            emit_comment("DEBUG: Loaded constant " + src2 + " into " + reg2);
        } else {
            reg2 = ensure_in_register(src2);
            emit_comment("DEBUG: " + src2 + " in " + reg2);
        }
        
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
        
        // Get operands into registers
        string reg1, reg2;
        
        // Handle first operand
        if (instr->arg1->type == TAC_OPERAND_CONSTANT) {
            reg1 = allocate_register_with_spilling();
            emit("li " + reg1 + ", " + src1);
            emit_comment("DEBUG: Loaded constant " + src1 + " into " + reg1);
        } else {
            reg1 = ensure_in_register(src1);
            emit_comment("DEBUG: " + src1 + " in " + reg1);
        }
        
        // Handle second operand
        if (instr->arg2->type == TAC_OPERAND_CONSTANT) {
            reg2 = allocate_register_with_spilling();
            emit("li " + reg2 + ", " + src2);
            emit_comment("DEBUG: Loaded constant " + src2 + " into " + reg2);
        } else {
            reg2 = ensure_in_register(src2);
            emit_comment("DEBUG: " + src2 + " in " + reg2);
        }
        
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
    
    // Get first operand into register
    string reg1;
    if (instr->arg1->type == TAC_OPERAND_CONSTANT) {
        reg1 = allocate_register_with_spilling();
        emit("li " + reg1 + ", " + src1);
        emit_comment("DEBUG: Loaded constant " + src1 + " into " + reg1);
    } else {
        // Check if it's a numeric literal (workaround for parser)
        bool is_numeric = !src1.empty() && (isdigit(src1[0]) || src1[0] == '-');
        if (is_numeric) {
            reg1 = allocate_register_with_spilling();
            emit("li " + reg1 + ", " + src1);
            emit_comment("DEBUG: Loaded constant " + src1 + " into " + reg1);
        } else {
            reg1 = ensure_in_register(src1);
            emit_comment("DEBUG: " + src1 + " in " + reg1);
        }
    }
    
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
    
    // Get second operand into register
    string reg2;
    if (instr->arg2->type == TAC_OPERAND_CONSTANT) {
        reg2 = allocate_register_with_spilling();
        emit("li " + reg2 + ", " + src2);
        emit_comment("DEBUG: Loaded constant " + src2 + " into " + reg2);
    } else {
        // Check if it's a numeric literal
        bool is_numeric = !src2.empty() && (isdigit(src2[0]) || src2[0] == '-');
        if (is_numeric) {
            reg2 = allocate_register_with_spilling();
            emit("li " + reg2 + ", " + src2);
            emit_comment("DEBUG: Loaded constant " + src2 + " into " + reg2);
        } else {
            reg2 = ensure_in_register(src2);
            emit_comment("DEBUG: " + src2 + " in " + reg2);
        }
    }
    
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

void MIPSGenerator::translate_jump(TACInstruction* instr) {
    // Unconditional jump: goto label
    if (instr->flag == 1) {
        string target_label = instr->result->value;
        emit_comment("Unconditional jump to I" + target_label);
        emit("j I" + target_label);
    }
}

void MIPSGenerator::translate_call(TACInstruction* instr) {
    // Stub
}

void MIPSGenerator::translate_return(TACInstruction* instr) {
    // Stub
}

void MIPSGenerator::translate_param(TACInstruction* instr) {
    // Stub
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


