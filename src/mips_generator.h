#ifndef MIPS_GENERATOR_H
#define MIPS_GENERATOR_H

#include <string>
#include <vector>
#include <map>
#include <set>
#include <fstream>
#include "descriptors.h"
#include "runtime_library.h"

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
    void clear_dirty(const string& reg);  // Clear dirty flag for specific register
    bool is_dirty(const string& reg);
    set<string> get_dirty_regs();
    void clear_all();
    bool is_reg_allocated(const string& reg);  // Check if register is allocated
    void mark_allocated(const string& reg);  // Mark register as allocated
    void unmark_allocated(const string& reg);  // Unmark register allocation (but keep variables)
};

// MIPS Code Generator (Simplified stub version)
class MIPSGenerator {
private:
    ostream& output;
    ostream* clean_output;  // Optional clean output (no debug comments)
    MIPSRegisterAllocator reg_allocator;
    RuntimeLibrary runtime_lib;  // Runtime library manager
    int current_instruction_index;
    // NEW: Add descriptors
    RegisterDescriptor reg_desc;
    StorageDescriptor storage_desc;
    map<int,map<string,int>>next_use_table; // next use table: instr index -> (var name -> next use index)
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
    
    // Global and static variable management
    map<string, int> global_var_offsets;  // Maps variable name to offset from $gp
    int next_global_offset;                // Next available offset from $gp
    
    void generate_data_section();
    void collect_data_section_items(const vector<TACInstruction*>& tac_instructions);
    void collect_global_variables(const vector<TACInstruction*>& tac_instructions);
    string add_string_literal(const string& content);  // Add string, return label
    
    void generate_text_section(const vector<TACInstruction*>& tac_instructions);
    
    // Basic block analysis
    void analyze_basic_blocks(const vector<TACInstruction*>& tac_instructions);
    void compute_next_use_info(const BasicBlock& block, const vector<TACInstruction*>& tac_instructions);
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
    void translate_cast(TACInstruction* instr);
    void translate_unary_minus(TACInstruction* instr);
    void translate_jump(TACInstruction* instr);
    void translate_call(TACInstruction* instr);
    void translate_return(TACInstruction* instr);
    void translate_param(TACInstruction* instr);
    void translate_jump_table(TACInstruction* instr);  // NEW: Handle switch-case jump tables
    
    string get_mips_label(TACOperand* label);
    string load_operand(TACOperand* operand, const string& reg);  // Simplified - no TypeInfo parameter
    void store_to_memory(const string& reg, TACOperand* dest);     // Simplified - no TypeInfo parameter
    int get_offset(const string& var_name);
    string get_operand_string(TACOperand* operand);
    bool is_float_type(const string& type_name);  // Simplified - takes string instead of TypeInfo
    bool is_operand_float(TACOperand* operand);  // Check if operand is float type
    bool is_operand_char(TACOperand* operand);   // Check if operand is char type
    
    // Global/static variable helpers
    bool is_global_or_static(const string& var_name);
    int get_global_offset(const string& var_name);
    int allocate_global_space(const string& var_name, bool is_float);
    
    void emit(const string& instruction);
    void emit_comment(const string& comment);
    void emit_label(const string& label);

    string get_reg(const string& var);  // Get register with var, or allocate and load
    string allocate_register_for_constant();  // Allocate register for constants (lightweight)
    string allocate_register_with_spilling();  // Allocate register, spilling if necessary
    string select_victim_by_next_use();  // Select victim register based on next use information
    int get_next_use_distance(const string& var);  // NEW: Get next use distance for variable
    void spill_register(const string& reg);  // Write back all vars in register to memory
    void spill_all_dirty();  // Write back all dirty registers to memory
    string ensure_in_register(const string& var);  // Ensure var is in a register
    string ensure_in_float_register(const string& var);  // Ensure float var is in float register
    string load_operand_to_register(TACOperand* operand);  // Load operand (constant or variable) into register
    void print_descriptors();  // Debug: Print current state of descriptors
    void emit_direct(const string& instruction);  // Emit without buffering (for prologue/epilogue)
    // Peephole optimization support
    vector<string> instruction_buffer;  // Buffer to hold instructions before emitting
    int peephole_window_size;           // Size of optimization window (default: 3-5)
    
    // Peephole optimization methods
    void flush_instruction_buffer();
    void apply_peephole_optimizations();
    bool optimize_redundant_moves();
    bool optimize_load_store_pairs();
    bool optimize_arithmetic_identity();
    bool optimize_branch_chains();
    bool optimize_strength_reduction();
    
    // Helper: emit instruction to buffer instead of directly
    void emit_to_buffer(const string& instruction);
    
public:
    MIPSGenerator(ostream& out, ostream* clean_out = nullptr);
    void generate(const vector<TACInstruction*>& tac_instructions);
    void update_symbol_table_offsets();
};

#endif // MIPS_GENERATOR_H
