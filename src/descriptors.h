#ifndef DESCRIPTORS_H
#define DESCRIPTORS_H

#include <string>
#include <set>
#include <map>
using namespace std;

// Register Descriptor: tracks which variables are currently in each register
class RegisterDescriptor {
private:
    map<string, set<string>> reg_to_vars;  // register -> set of variables
    
public:
    void add_var_to_reg(const string& reg, const string& var);
    void remove_var_from_reg(const string& reg, const string& var);
    void clear_reg(const string& reg);
    set<string> get_vars_in_reg(const string& reg);
    bool is_var_in_reg(const string& reg, const string& var);
    void clear_all();
};

// Storage Descriptor: tracks where each variable is stored
class StorageDescriptor {
private:
    map<string, set<string>> var_to_locations;  // variable -> set of locations (registers/memory)
    
public:
    void add_location(const string& var, const string& location);
    void remove_location(const string& var, const string& location);
    void set_location(const string& var, const string& location);  // Clear old, set new
    set<string> get_locations(const string& var);
    set<string> get_all_variables();  // Get all variables in storage descriptor
    bool is_in_register(const string& var);
    string get_register(const string& var);  // Returns first register location
    bool is_only_in_register(const string& var);  // True if ONLY in register, not in memory
    void clear_all();
    void remove_all_register_locations();  // Remove all register locations from all variables
};

#endif // DESCRIPTORS_Hc