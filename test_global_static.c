// Test file for global and static variables

int global_var = 10;
float global_float = 3.14;
static int static_var = 20;

int add_to_global(int x) {
    global_var = global_var + x;
    return global_var;
}

int use_static() {
    static_var = static_var + 5;
    return static_var;
}

int main() {
    int local = 5;
    int result;
    
    // Test global variable
    result = add_to_global(local);
    
    // Test static variable
    result = use_static();
    
    // Use global float
    global_float = global_float + 1.0;
    
    return result;
}
