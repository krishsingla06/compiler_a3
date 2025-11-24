void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

int main(){
   int *ptr;
   int arr[4];
   ptr = arr; // point to the first element of arr
   ptr[2] = 100; // set the third element of arr to 100
    printf("Value: %d\n", arr[2]); // should print 100
}