
void printf(char* c, ...){return;}

// loop test
int main(){
    int i;
    int sum;
    sum = 0;
    for(i=1;i<=10;i++){
        sum = sum + i;
    }
    printf("Sum: %d\n", sum);
    return sum; // should return 55
}

