typedef int* pint;

int main() {
    float f = 2.5;
    //pint p = &f;   // ❌ incompatible pointer type (int* = float*)
    return 0;
}