// Test case attempting to create infinite loop by overwriting return address
int val;

void foo() {
    int* p = &val;
    p=p+1;  // point to saved return address
    val = *p;  // read return address
    
}

void bar() {
    int* p = &val;
    *(p - 1) = val;  // write return address through pointer - should create infinite loop
}

int main() {
    foo();
    bar();
    return 0;
}
