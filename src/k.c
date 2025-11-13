void print_int(int i){return;}

void print_float(float f){return;}

void print_char(char c){return;}

void print_string(char* s){return;}

char myfunc(char inp){
    return inp;
}

int main(){
    char arr[5];
    arr[0] = 'a';
    arr[1] = 'b';
    arr[2] = 'c';  
    arr[3] = 'd';
    arr[4] = 'e';
    print_char(arr[2]);
    return 0;
}