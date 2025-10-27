int * func(float inp){
    int a = inp;
    return &a;
}

int main(){
    float var = 5.5;
    int* res = func(var);
    return 0;
}
