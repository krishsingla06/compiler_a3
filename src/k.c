int printf(char* fmt, ...){ return 0; }
int scanf(char* fmt, ...){ return 0; }

int main(){
    int i;
    int a = 0, b = 5;
    int c = 10;
    float f = 2.5;

    // char* name = "Compiler";
    // int arr[5] = {1, 2, 3, 4, 5};                  // not working

    // working
    int arr[5];
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;
    arr[3] = 4;
    arr[4] = 5;

    // if the array is not defined, it worksss good
    printf("a before for loop: %d\n", a);
    printf("b before for loop: %d\n", b);
    printf("c before for loop: %d\n", c);
}
