// Test case for global variable store through pointer
int global_val;

void store_through_pointer() {
    int* p = &global_val;
    *p = 100;  // Should store 100 into global_val
}

int main() {
    global_val = 42;
    store_through_pointer();
    print_int(global_val);  // Should print 100
    return 0;
}
