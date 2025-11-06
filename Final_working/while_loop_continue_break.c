
//#include <stdio.h>

void print_int(int n){
    return;
}

void print_newline(){
    return;
}

// -------------------------------------
int main(){
    int i=0;
    int sum;
    sum = 0;
    while(i<=10){
        i = i + 1;
        if(i==5){
            continue;
        }
        if(i==8){
            break;
        }
        sum = sum + i;
    }
    //printf("%d\n", sum);
    print_int(sum); // should print 23
    print_newline();
    return sum; // should return 23
}