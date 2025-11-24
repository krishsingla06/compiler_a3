#include "runtime_library.h"
#include <fstream>
#include <iostream>
#include <sstream>

RuntimeLibrary::RuntimeLibrary() {
    // Set the library file path relative to where the compiler is run
    library_file_path = "runtime_library.asm";
}

void RuntimeLibrary::mark_function_used(const string& function_name) {
    used_functions.insert(function_name);
}

bool RuntimeLibrary::is_library_function(const string& function_name) {
    set<string> supported = get_supported_functions();
    return supported.find(function_name) != supported.end();
}

string RuntimeLibrary::get_library_label(const string& function_name) {
    return "__lib_" + function_name;
}

set<string> RuntimeLibrary::get_supported_functions() {
    set<string> functions;
    functions.insert("printf");
    functions.insert("print_int");
    functions.insert("print_float");
    functions.insert("print_char");
    functions.insert("print_string");
    functions.insert("print_newline");
    // Future functions can be added here:
    functions.insert("scanf");
    // functions.insert("malloc");
    // functions.insert("free");
    
    // File manipulation functions
    functions.insert("fopen");
    functions.insert("fclose");
    functions.insert("fgetc");
    functions.insert("fputc");
    functions.insert("fgets");
    functions.insert("fputs");
    functions.insert("fprintf");
    functions.insert("fscanf");
    functions.insert("feof");
    functions.insert("ferror");
    
    return functions;
}

bool RuntimeLibrary::has_used_functions() const {
    return !used_functions.empty();
}

string RuntimeLibrary::read_function_from_library(const string& function_name) {
    ifstream lib_file(library_file_path);
    if (!lib_file.is_open()) {
        cerr << "Warning: Could not open runtime library file: " << library_file_path << endl;
        return "";
    }
    
    // Read entire library file
    stringstream buffer;
    buffer << lib_file.rdbuf();
    string library_content = buffer.str();
    lib_file.close();
    
    // Extract the function code
    string function_label = get_library_label(function_name);
    return extract_function_code(library_content, function_label);
}

string RuntimeLibrary::extract_function_code(const string& library_content, const string& function_label) {
    // Find the function label
    size_t start_pos = library_content.find(function_label + ":");
    if (start_pos == string::npos) {
        cerr << "Warning: Function " << function_label << " not found in library" << endl;
        return "";
    }
    
    // Find the start of the function (include comment block before it)
    // Search backwards for the comment block
    size_t comment_start = start_pos;
    size_t line_start = start_pos;
    
    // Find beginning of line containing function label
    while (line_start > 0 && library_content[line_start - 1] != '\n') {
        line_start--;
    }
    
    // Search backwards for the separator line (===...===)
    size_t search_pos = line_start;
    while (search_pos > 0) {
        if (library_content[search_pos] == '=' && search_pos > 0) {
            // Check if this is a line of ='s
            size_t line_begin = search_pos;
            while (line_begin > 0 && library_content[line_begin - 1] != '\n') {
                line_begin--;
            }
            
            // Check if line starts with #====
            if (line_begin < library_content.length() && 
                library_content[line_begin] == '#' &&
                library_content.substr(line_begin, 5) == "#====") {
                comment_start = line_begin;
                break;
            }
        }
        search_pos--;
    }
    
    // Find the end of the function
    // Look for 'jr $ra' instruction (all functions end with this)
    size_t search_from = start_pos + function_label.length();
    size_t jr_ra_pos = library_content.find("jr $ra", search_from);
    
    if (jr_ra_pos != string::npos) {
        // Find the end of the line containing 'jr $ra'
        size_t end_pos = library_content.find('\n', jr_ra_pos);
        if (end_pos == string::npos) {
            end_pos = library_content.length();
        } else {
            end_pos++; // Include the newline
        }
        
        // Skip any blank lines after jr $ra
        while (end_pos < library_content.length() && 
               (library_content[end_pos] == '\n' || library_content[end_pos] == '\r')) {
            end_pos++;
        }
        
        // Extract function code
        string function_code = library_content.substr(comment_start, end_pos - comment_start);
        return function_code + "\n";
    }
    
    // Fallback: look for next function label or end of file
    size_t end_pos = library_content.find("\n__lib_", search_from);
    if (end_pos == string::npos) {
        end_pos = library_content.length();
    }
    
    // Extract function code
    string function_code = library_content.substr(comment_start, end_pos - comment_start);
    return function_code + "\n";
}

void RuntimeLibrary::emit_library_code(ostream& output) {
    if (used_functions.empty()) {
        return;
    }
    
    output << "\n";
    output << "#==============================================================================\n";
    output << "# RUNTIME LIBRARY FUNCTIONS\n";
    output << "# The following functions are imported from the runtime library\n";
    output << "#==============================================================================\n";
    output << "\n";
    
    // Emit each used function
    for (const string& func_name : used_functions) {
        string func_code = read_function_from_library(func_name);
        if (!func_code.empty()) {
            output << func_code;
        }
    }
    
    output << "#==============================================================================\n";
    output << "# END OF RUNTIME LIBRARY\n";
    output << "#==============================================================================\n";
    output << "\n";
}
