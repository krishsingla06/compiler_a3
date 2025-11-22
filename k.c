void printf(char *s, ...){
    return;
}

void scanf(char *s, ...){
    return;
}

// scanf and printf test

int main(){
    int x;
    float y;
    char z;
    scanf("%d %f %c", &x, &y, &z);  // Corrected to use & for all variables
    printf("Integer: %d\n", x);
    printf("Float: %f\n", y);
    printf("Character: %c\n", z);
    return 0;
}