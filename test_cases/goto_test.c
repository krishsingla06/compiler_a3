// Test case for goto statements in C
// This demonstrates how goto works with labels

int main() {
    int i;
    i = 1;
    
    // Simple goto forward
    goto skip_section;
    
    i = i + 10;
    i = i * 2;
    
skip_section:
    i = i + 5;
    
    // Loop using goto (similar to a while loop)
    loop_start:
    if (i <= 5) {
        i = i + 1;
        goto loop_start;
    }
    
    // Conditional goto
    if (i == 6) {
        goto end_section;
    } else {
        i = i - 1;
    }
    
    i = i * 3;
    
end_section:
    i = i + 2;
    
    return 0;
}