// Test file for until loop

int main() {
    int i = 5;
    int sum = 0;
    
    // Simple until loop
    until (i <= 0) {
        sum = sum + i;
        i = i - 1;
    }
    
    return 0;
}