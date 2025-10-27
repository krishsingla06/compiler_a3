int globalInt = 5;
float globalFloat = 3.14;

// Function with local scope
void testScope(int param) {
    int localInt = 10;
    float localFloat = 2.71;
    
    // Shadowing global variable
    int globalInt = 20;
}

int main() {
    int mainInt = 100;
    float mainFloat = 1.23;

    int globalInt = 200;
    float globalFloat = 3.14159;

    testScope(mainInt);

    // Block scope
    {
        int blockInt = 200;
    }
    return 0;
}
