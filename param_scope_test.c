// Test parameter scope issue
int a;

int add(int a, int b) {
    int a;  // This should give an error - redeclaration of parameter
    return a + b;
}

int subtract(int x, int y) {
    int z = x - y;  // This should work - z is not a parameter
    return z;
}

int main() {
    return 0;
}