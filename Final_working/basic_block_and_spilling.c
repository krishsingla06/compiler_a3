
void print_int(int n){
    return;
}

void print_newline(){
    return;
}

// Important: Test jumps and labels as well as basic block handling
int main(){
    int x;
    x=1;
    x++;
    x--;
    goto L1; // before jump registers are spilled.
    x=2;
L1:
    x=3;
    goto L2;
L2:
    print_int(x);
    print_newline();
    x=4;
    return x;
}