int add(int a, int b) {
    return a + b;
}

int compute() {
    int x = 10;
    int y = 20;
    int z = x + y;  // z is in a register (dirty)
    
    // Call function - x, y, z should be saved before call
    int result = add(z, 5);
    
    // Use z after call - should still have value 30
    int final = z + result;
    return final;
}

int main() {
    int value = compute();
    return value;
}
