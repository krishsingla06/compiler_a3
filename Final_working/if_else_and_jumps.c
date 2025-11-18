
void printf(char* c, ...){return;}

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
    printf("Sum: %d\n", sum); // should print 90
    return sum; // should return 90
}