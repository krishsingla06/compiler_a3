#include "descriptors.h"

// Register Descriptor Implementation
void RegisterDescriptor::add_var_to_reg(const string& reg, const string& var) {
    reg_to_vars[reg].insert(var);
}

void RegisterDescriptor::remove_var_from_reg(const string& reg, const string& var) {
    if (reg_to_vars.find(reg) != reg_to_vars.end()) {
        reg_to_vars[reg].erase(var);
    }
}

void RegisterDescriptor::clear_reg(const string& reg) {
    reg_to_vars[reg].clear();
}

set<string> RegisterDescriptor::get_vars_in_reg(const string& reg) {
    return reg_to_vars[reg];
}

bool RegisterDescriptor::is_var_in_reg(const string& reg, const string& var) {
    if (reg_to_vars.find(reg) == reg_to_vars.end()) return false;
    const set<string>& vars = reg_to_vars[reg];
    return vars.find(var) != vars.end();
}

void RegisterDescriptor::clear_all() {
    reg_to_vars.clear();
}

// Storage Descriptor Implementation
void StorageDescriptor::add_location(const string& var, const string& location) {
    var_to_locations[var].insert(location);
}

void StorageDescriptor::remove_location(const string& var, const string& location) {
    if (var_to_locations.find(var) != var_to_locations.end()) {
        var_to_locations[var].erase(location);
    }
}

void StorageDescriptor::set_location(const string& var, const string& location) {
    var_to_locations[var].clear();
    var_to_locations[var].insert(location);
}

set<string> StorageDescriptor::get_locations(const string& var) {
    return var_to_locations[var];
}

set<string> StorageDescriptor::get_all_variables() {
    set<string> all_vars;
    for (const auto& pair : var_to_locations) {
        if (!pair.second.empty()) {  // Only include variables that have at least one location
            all_vars.insert(pair.first);
        }
    }
    return all_vars;
}

bool StorageDescriptor::is_in_register(const string& var) {
    if (var_to_locations.find(var) == var_to_locations.end()) return false;
    for (const string& loc : var_to_locations[var]) {
        if (loc[0] == '$') return true;
    }
    return false;
}

string StorageDescriptor::get_register(const string& var) {
    if (var_to_locations.find(var) == var_to_locations.end()) return "";
    for (const string& loc : var_to_locations[var]) {
        if (loc[0] == '$') return loc;
    }
    return "";
}

bool StorageDescriptor::is_only_in_register(const string& var) {
    if (var_to_locations.find(var) == var_to_locations.end()) return false;
    const auto& locs = var_to_locations[var];
    return locs.size() == 1 && (*locs.begin())[0] == '$';
}

void StorageDescriptor::clear_all() {
    var_to_locations.clear();
}

void StorageDescriptor::remove_all_register_locations() {
    // Remove all register locations (starting with '$') from all variables
    // Keep memory locations intact
    for (auto& pair : var_to_locations) {
        set<string>& locations = pair.second;
        // Remove all locations that start with '$' (registers)
        for (auto it = locations.begin(); it != locations.end(); ) {
            if ((*it)[0] == '$') {
                it = locations.erase(it);
            } else {
                ++it;
            }
        }
    }
}

// Dereference marker methods (for detecting store-indirect patterns)
void StorageDescriptor::set_dereference_marker(const string& temp, const string& ptr_source) {
    dereference_markers[temp] = ptr_source;
}

bool StorageDescriptor::has_dereference_marker(const string& temp) {
    return dereference_markers.find(temp) != dereference_markers.end();
}

string StorageDescriptor::get_dereference_source(const string& temp) {
    if (dereference_markers.find(temp) != dereference_markers.end()) {
        return dereference_markers[temp];
    }
    return "";
}

void StorageDescriptor::clear_dereference_marker(const string& temp) {
    dereference_markers.erase(temp);
}