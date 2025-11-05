// Test: Multiple variables in same register, then reassign one
int main() {
    int x, y;
    x = 5;     // x = 5, loaded in some register (say $t0)
    y = x;     // y = x, both in same register ($t0)
    x = 10;    // x = 10, should move to new register and remove from old
    return x + y;
}
