typedef int T;

int f(T x) {
    typedef float T;   // shadowing inside function
    T y = 2.5;         // float y
    return x + y;      // ❌ type mismatch (int + float)
}

int main() {
    return f(5);  // Should flag error during type checking
}