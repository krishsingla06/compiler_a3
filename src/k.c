// Simple test for function pointers
void printf(char* fmt, ...){}

int add(int a, int b) {
    return a+b;
}

int main() {
    int result;
    
    result = add(3, 4);
    printf("Result: %d\n", result);
    
    return 0;
}
