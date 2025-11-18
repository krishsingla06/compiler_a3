
void printf(char* c, ...){return;}

int main(){
    int i;
    int sum;
    sum = 0;
    until(i>10){
        if(i%2==0){
            sum = sum + i;
        }
        else{
            sum = sum + (i*2);
        }
        i = i + 1;
    }
    printf("Sum: %d\n", sum);
    return sum; // should return 80
}