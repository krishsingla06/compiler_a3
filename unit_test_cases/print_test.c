int print_int(int x) {
    return 0;
}

int main() {
    int x = 10;
    int y = 20;
    int z = x + y;
    int *ptr;
    ptr = &z;

    
    print_int(z);
    print_int(x);
    print_int(y);
    z=z*2;
    print_int(z);
    
    return z;
}
