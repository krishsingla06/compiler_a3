void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

// complicated enum test case
enum Day { SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY };

int main(){
    enum Day today;
    today = WEDNESDAY;

    switch (today) {
        case 0:
            printf("Today is SUNDAY\n");
            break;
        case 1:
            printf("Today is MONDAY\n");
            break;
        case 2:
            printf("Today is TUESDAY\n");
            break;
        case 3:
            printf("Today is WEDNESDAY\n");
            break;
        case 4:
            printf("Today is THURSDAY\n");
            break;
        case 5:
            printf("Today is FRIDAY\n");
            break;
        case 6:
            printf("Today is SATURDAY\n");
            break;
        default:
            printf("Unknown day\n");
    }

    return 0;
}