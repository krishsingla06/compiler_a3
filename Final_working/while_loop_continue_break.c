
//#include <stdio.h>

void printf(char* c, ...){return;}

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
    printf("Sum: %d\n", sum); // should print 23
    return sum; // should return 23
}