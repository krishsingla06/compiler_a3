int main() {
    int a = 1;
    int b = 2;
    int c = 3;
    int d = 4;
    int e = 5;
    
    // Create many temps that all need to stay alive
    // This will force spilling because we need more than 10 registers
    int result = ((a + b) * (c + d)) + ((a - b) * (c - d)) + 
                 ((a * b) + (c * d)) + ((a + c) * (b + d)) +
                 (e * (a + b + c + d));
    
    return result;
}
