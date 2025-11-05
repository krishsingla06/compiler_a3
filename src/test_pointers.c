int main() {
    int x;
    int *ptr;
    int y;
    
    x = 10;
    ptr = &x;      // Address-of operator
    y = *ptr;      // Dereference operator
    
    return y;
}
