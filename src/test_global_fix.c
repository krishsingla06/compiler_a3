// Simple test for global variable store through pointer
int val = 100;

void modify() {
    int* p = &val;
    *p = 200;
}

int main() {
    modify();
    print_int(val);  // Should print 200
    return 0;
}
