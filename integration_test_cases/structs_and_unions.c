// passed

struct A;

struct A* f(){
    struct A* objA;
    return objA;
}

struct A{
    int a;
    float b;
};

struct B{
    float c;
    char d;
};

union U{
    int x;
    float y;
};

union U main(){
    union U objU;
    objU.x = 10;
    objU.y = 20.5;
    return objU;
}