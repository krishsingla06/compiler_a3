void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

union Data {
    int i;
    float f;
    char c;
};

int main(){
    union Data data;
    data.i = 10;
    printf("Data as int: %d\n", data.i); // should print 10
    data.f = 220.5;
    printf("Data as float: %f\n", data.f); // should print 220.5
    data.c = 'A';
    printf("Data as char: %c\n", data.c); // should print 'A'
    
    return 0;
}