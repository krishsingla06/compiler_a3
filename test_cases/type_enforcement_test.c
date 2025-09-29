// Test case for enforcing single static/const rule
// Valid combinations that should work

int main() {
    // Valid combinations (should work)
    int a;                    // basic type
    static int b;             // static + type
    const int c = 5;          // const + type  
    static const int d = 10;  // static + const + type
    
    // Multiple variables of same type
    int x, y, z;
    static int p, q;
    const int r = 1, s = 2;
    static const int u = 3, v = 4;
    
    return 0;
}

// Note: These should cause parse errors if uncommented:
// static static int invalid1;     // double static
// const const int invalid2;       // double const  
// const static int invalid3;      // wrong order (const before static)
// int static invalid4;            // wrong order (type before static)
// int const invalid5;             // wrong order (type before const)