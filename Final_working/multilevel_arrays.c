void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

int main(){
    int arr[4][3];
    arr[2][1]=42;
    printf("Value: %d\n", arr[2][1]); // should print 42
}