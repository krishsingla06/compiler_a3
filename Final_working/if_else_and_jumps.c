
void print_int(int n){
    return;
}

void print_newline(){
    return;
}

// highly complicated nested loops with jumps test
int main(){
    int i;
    int j;
    int sum;
    sum = 0;
    i = 1;
    I1:
    j = 1;
    I2:
        sum = sum + (i*j);
        j = j + 1;
        if(j<=5){
            goto I2;
        }
    i = i + 1;
    if(i<=3){
        goto I1;
    }
    print_int(sum); // should print 90
    print_newline();
    return sum; // should return 90
}