// Comprehensive test for file I/O operations

// Function declarations for file manipulation
int fopen(char* filename, char* mode) { return 0; }
int fclose(int fd) { return 0; }
int fgetc(int fd) { return 0; }
int fputc(int ch, int fd) { return 0; }
int fputs(char* str, int fd) { return 0; }
int feof(int fd) { return 0; }

// Helper print functions
int print_int(int x) { return 0; }
int print_string(char* s) { return 0; }

int main() {
    int file_write;
    int file_read;
    int status;
    int character;
    
    // Test 1: Write to a file using fputc
    print_string("Opening file for writing...");
    file_write = fopen("output.txt", "w");
    
    if (file_write != -1) {
        print_string("File opened successfully");
        
        // Write some characters
        fputc(72, file_write);   // 'H'
        fputc(101, file_write);  // 'e'
        fputc(108, file_write);  // 'l'
        fputc(108, file_write);  // 'l'
        fputc(111, file_write);  // 'o'
        fputc(10, file_write);   // newline
        
        // Write a string
        fputs("This is a test string", file_write);
        
        status = fclose(file_write);
        print_string("File closed");
    }
    
    // Test 2: Read from the file using fgetc
    print_string("Opening file for reading...");
    file_read = fopen("output.txt", "r");
    
    if (file_read != -1) {
        print_string("Reading characters:");
        
        // Read first 5 characters
        character = fgetc(file_read);
        print_int(character);
        
        character = fgetc(file_read);
        print_int(character);
        
        character = fgetc(file_read);
        print_int(character);
        
        character = fgetc(file_read);
        print_int(character);
        
        character = fgetc(file_read);
        print_int(character);
        
        // Check EOF
        status = feof(file_read);
        print_int(status);
        
        status = fclose(file_read);
        print_string("File closed after reading");
    }
    
    print_string("File I/O test completed");
    return 0;
}
