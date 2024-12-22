---
title: Functions
nav_order: 10
---
# Functions

Functions are xy's way of packaging behavior. The core idea is the same as in
languages like C.

```xy
def myfunc(x: int, y: int) -> (res: int) {
    res = x + y;
}
```

The name of the function must follow a [camel-case notation](TLD).
Parameters have the same syntax as variable declarations because they are a kind
of variables.

## Return statements

In many cases naming the output value (`res` in the example above) may be a bit clunky.
Maybe there is no appropriate name like in the example above. `res` is not really a name
that tells us much about what the function does. In those curcumstances the name can be omited
only the return type specified and the keyword `return` used to return a value. Note that
`return` also terminates the execution of the function.

```xy
def myfunc(x: int, y: int) -> int {
    return x + y;
}
```

`return` statements are a syntax sugar in XY. They are not required but come in handy
in many circumstances.

Return statements and named return values can be combined:

```xy
def myfunc(x: int, y: int) -> (res: int) {
    return x + y;
}
```

## Macros
If the function body is just one line of code than XY offers a shorthand notation:

```xy
def myfunc(x: int, y: int) x + y;
```

Functions that use this shorthand notation (i.e. no explicit return type and single-line body)
are called macros.

{: .its-a-trap }
Macros are not just syntax sugar. They are special in curtain cases. Refer to [Boundary Expressions]()
for more info.

## Multiple Return Values

They are not commonly used but in cirtain cases they can be very useful. Here is an example:

```xy
def solveSquare(a: float, b: float, c: float) -> (r1: float, r2: float) {
    r1 = ....;
    r2 = ....;
}
```

## General Form
The definition of a functions follows the established pattern:

`def <func-name>(<params>) <expression>`
