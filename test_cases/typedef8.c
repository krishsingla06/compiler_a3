typedef int A;
typedef A B;
typedef B C;

int main() {
    C x = 7;
    return x + 3;  // should return 10
}