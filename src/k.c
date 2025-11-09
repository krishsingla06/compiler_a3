// test_arithmetic.c
int main() {

    int x = 10;
    
    int y = x * 1;    // Should become move
    int z = y + 0;    // Should become move

    return z;

}