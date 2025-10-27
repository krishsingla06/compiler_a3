int a = 10 + 5;
int b = 10 - 5;
int c = 10 * 5;
int d = 10 / 5;
int e = 10 % 3;
int f = 2 + 3 * 4;
int g = (2 + 3) * 4;
int h = -a;
int i = +b;

int p = (5 < 10);
int q = (5 > 10);
int r = (5 <= 5);
int s = (5 >= 6);
int t = (5 == 5);
int u = (5 != 4);

int x = (1 && 0);
int y = (1 || 0);
int z = !x;

int sc1 = (0 && a);   // RHS not evaluated
int sc2 = (1 || b);   // RHS not evaluated

int e1 = 10 / 0;        // no error
int e2 = 5 && 10.5;     // type conversion
int e3 = 5 || "hello";  // type conversion
int e4 = !20.5;         // type conversion
// int e5 = 5 % 2.5;       // modulus on non-integer (giving error)
