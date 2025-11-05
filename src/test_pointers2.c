int main() {
    int x;
    int y;
    int *ptr1;
    int *ptr2;
    
    x = 5;
    y = 10;
    
    ptr1 = &x;
    ptr2 = &y;
    
    *ptr1 = 20;     // x should become 20
    *ptr2 = *ptr1;  // y should become 20
    
    return x + y;   // Should return 40
}
