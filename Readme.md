# Important notes

## Backpatching

We have implemented backpatching for control flow statements like if-else, loops, switch-case etc. We maintained :

```c
        unordered_set<TACInstruction*> true_list; 
        unordered_set<TACInstruction*> false_list; 
        unordered_set<TACInstruction*> next_list; 
        vector<TACInstruction*> code; 
        unordered_set<TACInstruction*> break_list; 
        unordered_set<TACInstruction*> continue_list;
```

## Short-circuit evaluation

We have implemented short-circuit evaluation for logical operators && and ||, for this we have used backpatching technique. For example in expression `A && B` is present in control flow statement, then if A is false then we don't evaluate B, similarly for `A || B`, if A is true then we don't evaluate B. Like :
```c
if( a > 0 && b < 5 && c!=0 ){ // If a > 0 is false, then rest code - ```b<5 and c!=0``` won't be evaluated.
    //...
  }
```

## Jump tables

Here rather than implementing the standard way of maintaining arrays of size MAX_CASE_VALUE - MIN_CASE_VALUE + 1, we have implemented jump tables using hash maps for better memory efficiency and for all the values not present in case labels, we jump to default case (-1 in our implementation), and we allowed only positive integer literals and char literals, so default case -1 will not conflict with any case labels.

``` c
9: goto jump_table(0,v_x_main_s2) // goto jump_table(table_id, switch_variable)
19: goto jump_table(1,v_z_main_s2) // look up value of v_z_main_s2 in jump table with id 1
```

- We have implemented jump tables for switch-case statements for better efficiency. For this for every switch-case statement we maintain a map of case label value to the corresponding TAC instruction address, and while generating TAC for switch-case statement, we generate jump table for that switch-case statement. Like :
```c
  int main()
{
    int x = 1;
    int y = 0;
    int z = 10;
    int a, b = 5, c = 3;
    int p, q = 20, r = 4;
    switch (x)
    {
    case 1:
        a = b + c;
        break;
    case 2:
        a = b - c;
        break;
    default:
        a = 0;
    }

    y = y + 1;

    switch (z)
    {
    case 10:
        p = q * r;
        break;
    case 20:
        p = q / r;
        break;
    default:
        p = 0;
    }
    return 0;
}
```
THE TAC - 
```c
1: function begin : main
2: v_x_main_s2 = 1
3: v_y_main_s2 = 0
4: v_z_main_s2 = 10
6: v_c_main_s2 = 3
8: v_r_main_s2 = 4
9: goto jump_table(0,v_x_main_s2)
10: #t1 = v_b_main_s2 + v_c_main_s2
11: v_a_main_s2 = #t1
12: goto I17
13: #t2 = v_b_main_s2 - v_c_main_s2
14: v_a_main_s2 = #t2
15: goto I17
16: v_a_main_s2 = 0
17: #t3 = v_y_main_s2 + 1
18: v_y_main_s2 = #t3
19: goto jump_table(1,v_z_main_s2)
20: #t4 = v_q_main_s2 * v_r_main_s2
21: v_p_main_s2 = #t4
22: goto I27
23: #t5 = v_q_main_s2 / v_r_main_s2
24: v_p_main_s2 = #t5
25: goto I27
26: v_p_main_s2 = 0
27: return 0
28: end function main
```

```c
Jump Table 0:
  case -1 -> 17 // default case
  case 1 -> 10
  case 2 -> 13

Jump Table 1:
  case -1 -> 27 // default case
  case 10 -> 20
  case 20 -> 23
```


## Name mangling for variables

While defining variable, we mangle the variable name with its scope and function name within which it is defined (or global scope), which will be beneficial during variable lookup to identify which variable to use in case of variable shadowing. For example:
```c
int x; // v_x_s1
void foo(int a,char **b){ // v_a_foo_i_cp2_s2, v_b_foo_i_cp2_s2
   int x; // v_x_foo_i_cp2_s2
   {
      int x; // v_x_foo_i_cp2_s3
   }
}

int main(){
   int x; // v_x_main_s2
}
```

## Name mangling for functions

While defining function, we mangle the function name with its parameter types which will be beneficial during function call to identify which function to call in case of function overloading and also it is beneficial in variables' scope management and name mangling. For example:
```c
int foo(int a, char b){ // foo_i_c
   return a;
}
float foo(float x){ // foo_f
   return x;
}
```

## Function overloading

Supported, for this we have mangled the function names, and while calling we first check for exact match of function signature, if not found then we check for each function with same name, if number of parameters match, then we check for type compatibility (like int to float conversion), if compatible we call that function after mangling the name accordingly, but if multiple functions are compatible, we throw error of ambiguous call.

## Ellipsis and function overloading

Even after two steps in above point, if we don't find any match, then we check for functions with ellipsis, if found we call that function after mangling the name accordingly, but if multiple functions with ellipsis are found, we throw error of ambiguous call. Eg:
```c
void log(int a, int b, ...){ // log_i_i_e
   //...
}
```

- Struct declaration is allowed without definition

```c
// Perfectly fine
struct Node; // perfectly valid, but compiler throw warnings,which we can ignore

int foo(int x){
    //...
    return x;
}
struct Node {
   int data;
   float value;
};
```
- Also inside struct, you can't make object of same struct type or some other struct type which is not yet defined.

```c
struct Point; // forward declaration
struct Node {
   int data;
   struct Node n2; // invalid, because size of Node is not known yet
   struct Point p; // invalid, because Point is not yet defined
};
```

- But yes you can make pointer of any struct type, because its size is known (4 or 8 bytes depending on architecture)
```c
struct Point; // forward declaration
struct Node {
   int data;
   struct Node* n2; // valid
   struct Point* p; // valid
};
```




# Variations from basic C/C++

- Our majority of the features are similar to standard C++ except few variations, listed below:

- In any compound statement `{ ... }`, all declarations must appear at the start of the block, similar to old-style C. e.g.
```c
{
   int a;
   int b;
   // declarations end here
   a = 5; // valid
   int c; // invalid
}
```

- We remove initializer lists for arrays and structs/unions/classes, because anyways those things can be done in other way also, which we are supporing. e.g.
```c
int arr[3] = {1, 2, 3}; // not allowed
int arr[3];
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;
```
```c
struct Point {
   int x;
   int y;
};
Point p = {10, 20}; // not allowed
Point p;
p.x = 10;
p.y = 20;
``` 


- We didn't allowed += -= |=, basically [bitwise_opertor][assignment_operator], to unnecessarily complicate the grammar, and make it lengthy, although it can be added with minimal efforts, but it didn't make sense to add them for this assignment, because ```a += b;``` is equivalent to ```a = a + b;```

- We didn't allowed function prototypes (declarations without body) to reduce grammar complexity. Like :
```
int func(int a, int b); // prototype - not allowed
int func(int a, int b){ // definition should be present
    return a + b;
  }
```

- But we have allowed struct/union prior declarations without definition (which is also present in standard C/C++).

- For switch-case labels - We only allowed positive integer literals and char literals, because in standard C/C++, case labels must be compile time constants, so we thought users rather than writing ``` case 2+3: ``` should write ``` case 5: ``` which also makes more sense.

- For ellipsis - We allowed defining function with ellipsis, we also allowed calling the function with ellipsis, but inside the function body if we want to use the parameters beyond `...`, those things are not present in *Standard C* also, but implemented in the library `<cstdarg>`, so we didn't implemented that part *varargs* handling. Anyways the grammar supports ellipsis in function definition and function call, and while function call params are pushed onto stack via `PARAM` instruction.

- Removed `const`, because it was not required for the assignment, although it can be added with some efforts - by maintaining a flag in `TypeInfo` class.

- In function calls, we removed syntax `int arr[]` or `int arr[10]`, because in standard C/C++, while passing array to function, it decays to pointer, so `int arr[]` is anyways equivalent to `int* arr`, and also passing `int arr[10]` seems to be of very less use.

- We have kept function pointer assignment in one way only that is:
```
int (*fcnptr) (int, int) = foo; // valid in both C and our language
```
The below way of function pointer assignment is not allowed in our language:
```
int (*fcnptr) (int, int) = &foo; // not allowed in our language, although valid in C
```


# Build & run

## Prerequisites

* `bison` (GNU Bison)
* `flex` (or your lexer; any lexer that feeds tokens to Bison works)
* `g++` (C++ compiler supporting C++11/C++17)
* Standard build tools (`make`) 

## Build (example)

```bash
make
```

## Run

```bash
./parser input_file.src
```

or directly use to run all files
```bash
./run.sh
```

TAC code will be generated in `input_file.tac` for each `input_file.src` and errors/warnings will be generated in `input_file.src.errors` file.
---

## Contributions
- **Krish Singla, 23114050** : 30%
- **Kritik Vijay, 23114051** : 25%
- **Arnav Gupta, 23114010** : 25%
- **Shubham Kataria, 23114092** : 20%

