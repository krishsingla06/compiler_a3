
int* foo(int inp)
{
    int *p = &inp;
    return p;
}

int goo()
{
    return 6;
}

int main()
{
    int a = 2;
    int* (*fcnPtr)(int); // fcnPtr points to function foo
    int* ans;
    fcnPtr = foo;
    ans = (*fcnPtr)(a);
    return 0;
}
