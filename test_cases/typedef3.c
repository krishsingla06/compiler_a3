typedef int* pint;

int main() {
    int x = 10;
    pint p = &x;
    *p = 20;
    return x;    // should return 20
}
