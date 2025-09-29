// typedef int i; // not supporting typedef 
// i x=3;

int pointer_and_ampersand(int x,int y){
    char int static const int static z; //correct
    //const *int p; // error , * must be just before identifier
    // star and ampersand must occur only just before identifier
    int *&ref; // reference to pointer - ref ek hii baar ayega
    int ***& ref3; // correct also
    //int &&hehe; // incorrect - rval ref
    int &ref2 = z; // correct - lval ref
    // So & just once before identifier - No rval ref
    // & aur identifier ke beech mein koi * nahi hona chahiye
    //int *&* p; // invalid

    int *ptr = &x; // correct
}

class K : public MClass { // Here we are ignoring MClass definition - we will only put MClass in symbol table when it will be declared, here it is simply used
    int data;
    static int staticData;
    public:
    K(int val){data=val;}
    //KK(int val){data=val;} --> Ok in parsing but will give error in semantic phase - there we will check if constructor name matches class name
    int getData(){return data;}

    // Can write multiple times in class - public private protected 
    private: 
    ~K(){data=0;}
};

int foo(int x,...){
    bar(); // No bar in symtab because it is simply a function call not definition
    return 0;
}

int main(){
    int arr[5] = {1,2,3,4,5}; //covers array case
    int marr[5][10] = {{1,2},{3,4}}; //covers multi-dim array case

    const char* str = "hello"; 

    class K obj(10); // object of class K
    struct Point p; // struct Point
    union Data d; // union Data
    enum Color col; // Color

    void *mem_ptr = malloc(10);

    // Lambda function - Error
    //auto lambda = [](int a, int b) { return a + b; };

    //function pointer - Error
    // int (*func_ptr)(int,int) = &foo;

    //auto x = 10; // Error - auto not supported


    // file manipulation functions - ok - Although error print ho rha hai kyunki FILE is not standard c datatype but it is struct in stdio.h

    // FILE *file = fopen("test.txt", "r");
    // if (file != NULL) {
    //     // File operations
    //     fclose(file);
    // }

    
        //1. What is FILE?

        //FILE is not a built-in datatype in C like int or char.

        //It is a structure (struct) type defined in the C standard library.

        //This structure stores all the information needed for handling a stream (like buffer, file position, error flags, etc.).

        //2. Where is FILE defined?

        //FILE is defined in the header file <stdio.h>.

        //Inside <stdio.h>, you will usually find something like:

        //typedef struct _IO_FILE FILE;

        //(The actual name _IO_FILE or similar depends on the compiler/implementation.)
    


    int _a=3,_b=&x,_c,*_d=x,&_y=NULL;

    int arnav,dg;


    return 0;
}






