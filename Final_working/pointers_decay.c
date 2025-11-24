void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }


//ok
void arr_decay_test(int *ptr){
    ptr[0] = 100;
    printf("Value: %d\n", ptr[0]);
    // print_int(ptr[0]); // should print 10
    // print_newline();
    ptr[1] = 200;
    // print_int(ptr[1]); // should print 20
    // print_newline();
    printf("Value: %d\n", ptr[1]);
}

int main(){
    int arr[4][3][2];
    int *ptr;
    ptr = arr;
    ptr[0] = 10;
    printf("Value: %d\n", arr[0][0][0]);
    // print_int(arr[0][0][0]); // should print 10
    // print_newline();
    ptr[1] = 20;
    printf("Value: %d\n", arr[0][0][1]);
    // print_int(arr[0][0][1]); // should print 20
    // print_newline();
    arr[1][0][0] = 30;
    printf("Value: %d\n", ptr[6]);
    // print_int(ptr[6]); // should print 30
    // print_newline();
    arr_decay_test(arr);
    printf("Completed arr_decay_test\n");
    printf("ptr[0]: %d, ptr[1]: %d\n", ptr[0], ptr[1]);
    

    return 0;
}