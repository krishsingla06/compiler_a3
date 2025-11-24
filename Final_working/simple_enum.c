void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

// enum test case
enum Color { RED, GREEN, BLUE };

int main(){
    enum Color favorite_color;
    favorite_color = GREEN;

    if (favorite_color == RED) {
        printf("Favorite color is RED\n");
    } else if (favorite_color == GREEN) {
        printf("Favorite color is GREEN\n");
    } else if (favorite_color == BLUE) {
        printf("Favorite color is BLUE\n");
    } else {
        printf("Unknown color\n");
    }

    return 0;
}