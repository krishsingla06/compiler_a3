typedef char* string;
typedef int array[1024];

typedef struct {
    int a;
    float b;
} myStruct;

typedef struct {
    int x;
    myStruct y;
    char z;
} point;


int main(){
    
    string str = "Hello, World!";
    array arr;
    typedef int i;
    i x;
    typedef char string;
    myStruct ms;
    point p;
    //string str2 = "Hello, World!"; // Type mismatch in initialization of variable 'str2': cannot convert from char* to char
    
    //arr=str;  Type Error at line 8: Cannot assign char* to int[1024]
    //string charVar = 'A'; Type mismatch in initialization of variable 'charVar': cannot convert from char to char*
    arr[3] = 42;
    // x=arr; //Type Error at line 16: Cannot assign int[1024] to int
    {
        typedef int i[10];
       i y;
       y[0] = 7;
       ms.b = y[0];

       //y=1; // Type Error at line 22: Cannot assign int to int[10]
    }
    p.x=1;
    p.y.a = 5;
    p.y.b = 3.14;
    p.z = 'c';
    return 0;
}

