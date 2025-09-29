# Summary

This repository contains a Bison grammar (`parser.y`) and a C++ driver that:

* Parses a C/C++-like source file.
* Builds a `multimap<string,string>` symbol table of identifiers → descriptor/type.
* Prints an aligned, human-readable symbol table after parsing.
* Reports parse errors with line numbers.

It intentionally covers a reduced-but-useful subset of C++: declarations, basic types, pointers, references, enums, structs/unions (data-only), classes with members and access-control, constructors/destructors, and control flow including an `until` loop.

---

# Language highlights & features

* **Top-level entities**

  * Functions (definition + body)
  * Global variable declarations (multiple declarators in one declaration allowed)
  * `struct`, `union` (data members only)
  * `enum` (classic C-style)
  * `class` (data members, member functions, constructors, destructors, access labels)
  
* **Function body rule**
  * Declarations must appear at the start of functions (like old-style C).
  * While making an object of a particular class, we need to write the **class** keyword before the class type
  e.g. class A a; -> makes an object a of class A
* **Declarators**

  * Multiple declarators on the same line supported: `int a, b = 4, c;`
  * Pointer chains: `int **p;`
  * References: `int &r;`
  * Type qualifiers: `const`
  * Storage class specifier: `static`
* **Control flow**

  * `if/else`, `switch/case/default`
  * `while`, `do-while`, `for`
  * Extra: `until (expr) { ... }` (behaves like `while (!(expr))`)
* **Class specifics**

  * `class` supports: data members, member functions, constructors, destructors, access labels (`public, protected, private`)
  * `struct` / `union` are restricted to data members only in this grammar
* **Expressions**

  * Rich expression grammar with precedence for arithmetic, bitwise, logical, assignment, postfix, prefix, function calls, array indexing.
* **Symbol table**

  * Every declared identifier is inserted into a global `multimap<string,string>` during parse for easy inspection.

---

# Build & run

## Prerequisites

* `bison` (GNU Bison)
* `flex` (or your lexer; any lexer that feeds tokens to Bison works)
* `g++` (C++ compiler supporting C++11/C++17)
* Standard build tools (`make`) optional

## Build (example)

Assuming your grammar file is `parser.y` and lexer is `lexer.l`:

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

Output will show:

* `Starting parser...`
* `yyparse() returned <code>`
* A printed symbol table.

---

