int main() {
    int a = 1, b = 2, c = 3, d = 4, e = 5, f = 6, g = 7, h = 8, i = 9, j = 10;
    
    // Create many temps - more than 10 registers
    int t1 = a + b;    // temp #t1
    int t2 = c + d;    // temp #t2  
    int t3 = e + f;    // temp #t3
    int t4 = g + h;    // temp #t4
    int t5 = i + j;    // temp #t5
    int t6 = a * b;    // temp #t6 - this will force spilling
    int t7 = c * d;    // temp #t7
    int t8 = e * f;    // temp #t8
    int t9 = g * h;    // temp #t9
    int t10 = i * j;   // temp #t10
    int t11 = a - b;   // temp #t11 - register pressure very high
    
    // Now use earlier temps that might have been spilled
    int result = t1 + t2 + t3 + t4 + t5 + t6 + t7 + t8 + t9 + t10 + t11;
    
    return result;
}
