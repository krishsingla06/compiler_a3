#ifndef MIPS_GENERATOR_H
#define MIPS_GENERATOR_H

#include <string>
#include <vector>
#include <map>
#include <set>
#include <fstream>
#include "descriptors.h"

using namespace std;

// Forward declarations for TAC types
class TACInstruction;
class TACOperand;

// Basic Block structure
struct BasicBlock {
    int id;                          // Block ID (B1, B2, ...)
    int start_index;                 // Starting TAC instruction index
    int end_index;                   // Ending TAC instruction index (inclusive)
    vector<int> successors;          // IDs of successor blocks
    vector<int> predecessors;        // IDs of predecessor blocks
    bool ends_with_jump;             // True if block ends with goto/branch
    bool ends_with_return;           // True if block ends with return
    
    BasicBlock() : id(0), start_index(0), end_index(0), 
                   ends_with_jump(false), ends_with_return(false) {}
};

// Register allocator for MIPS registers (Simplified stub version)
class MIPSRegisterAllocator {
private:
    set<string> allocated_temp_regs;
    set<string> allocated_saved_regs;
    set<int> allocated_float_regs;
    map<string, string> var_to_reg;
    set<string> dirty_regs;  // Track which registers have been modified

public:
    string allocate_temp_reg();
    string allocate_float_reg();
    void free_reg(const string& reg);
    string get_reg_for_var(const string& var);  // Simplified - no TypeInfo parameter
    void mark_dirty(const string& reg);
    bool is_dirty(const string& reg);
    set<string> get_dirty_regs();
    void clear_all();
    bool is_reg_allocated(const string& reg);  // Check if register is allocated
};

// MIPS Code Generator (Simplified stub version)
class MIPSGenerator {
private:
    ostream& output;
    ostream* clean_output;  // Optional clean output (no debug comments)
    MIPSRegisterAllocator reg_allocator;

    // NEW: Add descriptors
    RegisterDescriptor reg_desc;
    StorageDescriptor storage_desc;

    string current_function;
    int current_stack_size;
    
    // For tracking parameters during function calls
    vector<string> pending_params;  // Parameters pushed in order (param instructions)
    
    // Basic block management
    vector<BasicBlock> basic_blocks;
    map<int, int> instr_to_block;    // Maps instruction index to block ID
    int current_block_id;
    
    // Data section management
    map<string, string> string_literals;  // Maps string content to label (str_0, str_1, ...)
    int next_string_id;
    
    void generate_data_section();
    void collect_data_section_items(const vector<TACInstruction*>& tac_instructions);
    string add_string_literal(const string& content);  // Add string, return label
    
    void generate_text_section(const vector<TACInstruction*>& tac_instructions);
    
    // Basic block analysis
    void analyze_basic_blocks(const vector<TACInstruction*>& tac_instructions);
    void clear_all_registers();
    void emit_block_label(int block_id, int start_idx, int end_idx);
    
    void generate_function_prologue(const string& func_name);
    void generate_function_epilogue(const string& func_name);
    void initialize_parameter_descriptors(const string& func_name, int num_params);
    int calculate_stack_frame_size(const string& func_name);
    
    void translate_instruction(TACInstruction* instr);
    void translate_assignment(TACInstruction* instr);
    void translate_arithmetic(TACInstruction* instr);
    void translate_comparison(TACInstruction* instr);
    void translate_bitwise(TACInstruction* instr);
    void translate_address_of(TACInstruction* instr);
    void translate_dereference(TACInstruction* instr);
    void translate_store_indirect(TACInstruction* instr);
    void translate_jump(TACInstruction* instr);
    void translate_call(TACInstruction* instr);
    void translate_return(TACInstruction* instr);
    void translate_param(TACInstruction* instr);
    
    string get_mips_label(TACOperand* label);
    string load_operand(TACOperand* operand, const string& reg);  // Simplified - no TypeInfo parameter
    void store_to_memory(const string& reg, TACOperand* dest);     // Simplified - no TypeInfo parameter
    int get_offset(const string& var_name);
    string get_operand_string(TACOperand* operand);
    bool is_float_type(const string& type_name);  // Simplified - takes string instead of TypeInfo
    
    void emit(const string& instruction);
    void emit_comment(const string& comment);
    void emit_label(const string& label);

    string get_reg(const string& var);  // Get register with var, or allocate and load
    string allocate_register_with_spilling();  // Allocate register, spilling if necessary
    void spill_register(const string& reg);  // Write back all vars in register to memory
    void spill_all_dirty();  // Write back all dirty registers to memory
    string ensure_in_register(const string& var);  // Ensure var is in a register
    string load_operand_to_register(TACOperand* operand);  // Load operand (constant or variable) into register
    void print_descriptors();  // Debug: Print current state of descriptors
    
public:
    MIPSGenerator(ostream& out, ostream* clean_out = nullptr);
    void generate(const vector<TACInstruction*>& tac_instructions);
};

#endif // MIPS_GENERATOR_H
