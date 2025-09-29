
// ellipsis example
int foo(int maa,...){
    return maa;
}

const int lo(int a, char* b,const float c,int &h);

const int go(int a, char* b,const float c,int &h){
    int k = 5;
    int a = k;
    float d = 5.6;

    return a;
}

int foo(int x,int y){
    return x+y;
}

char sayhello(){
    char* str = "hello";
    return *str;
}

static int x=0;
int *x;
static const int y=0;
static const int *yy=0;
char *j = pp;
char ***jj = &j;
int y;
const static int z;
int x(){
    return 0;
}

void main(){
    int &m = x;
    int arr[5] = {1,2,3,4,5};
    foo(1,2);
    go(1,"hello",5.6,m);

    int *const ptr = &x; // correct
}

