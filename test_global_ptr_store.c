// Test case for global variable store through pointer
int val;

void foo() {
    int* p = &val;
    val = *p;  // read something into val (simulating return address read)
}

void bar() {
    int* p = &val;
    *(p - 1) = val;  // should store val's VALUE, not pointer
}

int main() {
    val = 42;
    foo();
    bar();
    return 0;
}
