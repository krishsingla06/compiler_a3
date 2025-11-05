int main() {
    char *msg1;
    char *msg2;
    char *msg3;
    
    msg1 = "Hello World";
    msg2 = "Testing string literals";
    msg3 = "Hello World";  // Duplicate - should reuse same label
    
    return 0;
}
