typedef int data;
typedef float data;   // ❌ conflicting redefinition

int main() {
    data x = 2.0;
    return 0;
}