int foo(int x) { return x + 1; }

int main(){
    // pointer to function inside a block scope
    int (*fp)(int);
    {
        int (*fptr)(int);
        fptr = foo;
        fp = fptr;
    }

    fp = foo;
    // fptr = NULL           // fptr out of scope
    fp(41);
    return 0;
}

