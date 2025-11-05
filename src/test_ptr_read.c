int main() {
    int a;
    int b;
    int *p;
    int *q;
    int x;
    int y;
    
    a = 100;
    b = 200;
    
    p = &a;    // p points to a
    q = &b;    // q points to b
    
    x = *p;    // x = 100 (read through pointer p)
    y = *q;    // y = 200 (read through pointer q)
    
    return x + y;  // Should return 300
}
