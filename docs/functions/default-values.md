---
title: Default Values
parent: Functions
nav_order: 10
---

# Parameter Default Values

Function parameter may be optional default values. The parameters with default values must follow the parameter without one in the list of parameter when a function is declared. **Unless and explicit value is provided the default value is always calculated**. Example:

```rust
func compute(a: Int) -> Int {
    print("Compute called");
    return a * 10;
}

func myfunc(a: Int, b: Int = compute(a)) -> Int {
    return a + b;
}

func main() -> Int {
    x := myfunc(30);
    y := myfunc(40);
    z := myfunc(50, 60);
    return x + y;
}
```

In this example `compute` will be called twice: once with the value of `30` when calling `myfunc(30)` and once with the value of `40` when calling `myfunc(40)`.

## Boundary expressions

The param default value expressions are a bit special. They are executed at the boundary between a caller and a callee, as a result of that they have access to both the caller and callee context. Such expression as called boundary expressions because they are executed at the boundary of two contexts. Access to the caller context is achieved through the use of the unary prefix `^` operator. Example:

```rust
=== module: m1 ===
func myfunc(a: Int, b: Int = ^compute(a)) -> Int {
    return a + b;
}
=== module: m2 ===
import m1;

func compute(b: Int) -> Int {
    return b;
}

func main() {
    x := myfunc(a);
}
```

Here is how the compile reasons about the code:
 * myfunc has a parameter with default value.
 * the default value is `^compute(a)`. So to find the function `compute` we must look in the callers context.
 * The function `compute` in module `m1` is located and used to calculate the default value.

**A parameter evaluated in the parent context is the argument itself**. This allows as to get direct access to the arguments and maybe compute them multiple times:

```rust
func doTwice(x: Int, b: Int = ^x) {}

func main() {
    doTwice(compute(10));
}

funct compute(a: Int) -> Int {
    return a * 10;
}
```
