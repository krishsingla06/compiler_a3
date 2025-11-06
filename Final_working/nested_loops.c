void print_int(int n){
    return;
}

void print_newline(){
    return;
}
// nested loops test
// while, do while and until only
int main(){
    int i;
    int j;
    int sum;
    sum = 0;
    i = 1;
    do{
        j = 1;
        while(j<=5){
            sum = sum + (i*j);
            j = j + 1;
        }
        i = i + 1;
    }while(i<=3);
    print_int(sum); // should print 90
    print_newline();
    return sum; // should return 90
}