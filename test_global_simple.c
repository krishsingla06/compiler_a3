// Simple test for global variable store through pointer
int global_val = 100;

void modify_through_pointer() {
    int* p = &global_val;
    *p = 200;  // Should store 200 into global_val
}

int main() {
    print_int(global_val);  // Should print 100
    modify_through_pointer();
    print_int(global_val);  // Should print 200
    return 0;
}
