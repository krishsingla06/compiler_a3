
int foo(int &a, float &b, char &c){
    a = a + 10;
    b = b + 1.5;
    c = c + 1; // Increment character
    return 0;
}

int goo(int *a, float *b, char *c){
    *a = *a + 20;
    *b = *b + 2.5;
    *c = *c + 2; // Increment character
    return 0;
}

int main(){
    int x = 5;
    float y = 2.5;
    char z = 'a';

    printf("Before foo call:\n");
    printf("x: %d, y: %f, z: %c\n", x, y, z);

    foo(x, y, z);
    printf("After foo call:\n");
    printf("x: %d, y: %f, z: %c\n", x, y, z);
    goo(&x, &y, &z);

    printf("After goo call:\n");
    printf("x: %d, y: %f, z: %c\n", x, y, z);

    return 0;
}
