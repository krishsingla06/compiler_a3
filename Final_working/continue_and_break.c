
void printf(char* c, ...){return;}

// go break continue test
int main(){
    int i=1;
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
    printf("Sum: %d\n", sum); // should print 22
    return sum; // should return 22
}