#ifndef RUNTIME_LIBRARY_H
#define RUNTIME_LIBRARY_H

#include <string>
#include <set>
#include <fstream>

using namespace std;

/**
 * RuntimeLibrary - Manages runtime library functions for MIPS code generation
 * 
 * This class tracks which library functions are used in the program and
 * includes only the necessary functions in the final assembly output.
 */
class RuntimeLibrary {
private:
    set<string> used_functions;     // Track which library functions are used
    string library_file_path;        // Path to runtime_library.asm
    
public:
    RuntimeLibrary();
    
    // Mark a library function as used
    void mark_function_used(const string& function_name);
    
    // Check if a function is a library function
    bool is_library_function(const string& function_name);
    
    // Get the library label for a function (e.g., "printf" -> "__lib_printf")
    string get_library_label(const string& function_name);
    
    // Generate the library code for all used functions
    void emit_library_code(ostream& output);
    
    // Check if any library functions were used
    bool has_used_functions() const;
    
    // Get list of supported library functions
    static set<string> get_supported_functions();
    
private:
    // Read a specific function's code from the library file
    string read_function_from_library(const string& function_name);
    
    // Extract function code between markers
    string extract_function_code(const string& library_content, const string& function_label);
};

#endif // RUNTIME_LIBRARY_H
