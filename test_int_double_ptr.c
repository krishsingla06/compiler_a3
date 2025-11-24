// Test with int** (pointer to pointer to int)
void printf(char* c, ...){return;}

int main(int argc, int** matrix){
    int i;
    int val;
    
    printf("Testing int** parameter\n");
    
    i = 0;
    while(i < argc){
        val = matrix[i][0];  // Access element
        printf("Value: %d\n", val);
        i = i + 1;
    }
    
    return 0;
}
