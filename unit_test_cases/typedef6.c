typedef int mytype;

int main() {
    mytype a = 10;

    {
        typedef float mytype;   // shadows outer typedef
        mytype a = 2.5;         // float a
        a = a + 1.5;            // ok, float arithmetic
    }

    return a;  // returns 10 (outer mytype)
}