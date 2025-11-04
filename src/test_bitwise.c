// Test bitwise operators
int main() {
    int a = 12;     // 1100 in binary
    int b = 10;     // 1010 in binary
    int c, d, e, f, g, h;
    
    c = a & b;      // Bitwise AND: 1000 = 8
    d = a | b;      // Bitwise OR:  1110 = 14
    e = a ^ b;      // Bitwise XOR: 0110 = 6
    f = ~a;         // Bitwise NOT: ~1100
    g = a << 2;     // Left shift:  110000 = 48
    h = b >> 1;     // Right shift: 0101 = 5
    
    return c + d + e + f + g + h;
}
