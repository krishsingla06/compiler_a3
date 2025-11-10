
int main() {
    int x = 5;
    
    // Simple chain: L1 -> L2 -> L3
    goto L1;
    
    L1: goto L2;
    L2: goto L3;
    L3: x = x + 1;
    
    return x;
}