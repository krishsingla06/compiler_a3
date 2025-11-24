void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }


int main(){
    char arr[2][3];
    char c = 'Z';
    arr[0][0] = 'A';
    arr[0][1] = 'B';
    arr[1][0] = 'C';

    printf("Character c: %c (ASCII: %d)\n", c, c); // should print 'Z' i.e., 90
    printf("arr[0][0]: %c (ASCII: %d)\n", arr[0][0], arr[0][0]); // should print 'A' i.e., 65
    printf("arr[0][1]: %c (ASCII: %d)\n",
              arr[0][1], arr[0][1]); // should print 'B' i.e., 66   
    printf("arr[1][0]: %c (ASCII: %d)\n",
                arr[1][0], arr[1][0]); // should print 'C' i.e., 67 
                
}