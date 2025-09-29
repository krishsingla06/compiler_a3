void printResult(const char* msg, int result) {
    printf("%s %d\n", msg, result);
}

int main() {
    int a = 10;
    float b = 5.5;
    char c = 'A';
    bool flag = true;
    const int CONST_VAL = 100;
    static int staticVar = 20;

    int* ptr = &a; // pointer to int
    int ref = a;   // C does not have references, but we can use another variable

    // Arithmetic operators
    int sum = a + (int)b;
    int diff = a - (int)b;
    int prod = a * (int)b;
    int quot = a / 2;
    int mod = a % 3;

    float fsum = b + a;
    float fdiff = b - a;
    float fprod = b * a;
    float fquot = b / 2.0;

    // Unary operators
    int neg = -a;
    int inc = ++a;
    int dec = --a;

    // Print results

    return 0;
}