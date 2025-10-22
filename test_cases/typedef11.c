int main() {
    myint a = 5;     // ❌ myint not known yet
    typedef int myint;
    return a;
}