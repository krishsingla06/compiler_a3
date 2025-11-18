void printf(char* format, ...){
    return;
}

int global_val;
int another_global;

void set_globals() {
    global_val = 42;
    another_global = 99;
}

void store_global_through_pointer() {
    int* p = &global_val;
    *p = another_global;  // Store another_global's VALUE through pointer
}

int main() {
    printf("Initial value of global_val: %d\n", global_val);

    set_globals();
    printf("Before: global_val = %d\n", global_val);
    
    store_global_through_pointer();
    printf("After:  global_val = %d\n", global_val);
    
    return 0;
}
