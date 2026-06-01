---
title: Functions
nav_order: 10
---
# Functions

Functions are xy's way of describing behavior. The core idea is the same as in
languages like C.

```python
func myfunc(x: Int, y: Int) -> Int {
    return x + y;
}
```

## Function names

A function name begins with a latter optionally followed by other letters or
digits. Only the latin letters `a-z` and `A-Z` are allowed. **Underscores are
not allowed** meaning names are either *camelCase* or *PascalCase*.

<details>
<summary>Reasoning</summary>
Disallowing the underscore symbols simplifies name mangling in a compiler.

Also, all naming conventions have their advantages and disadvantages. Arguing
about which one is better is like arguing about endianness, or spaces vs tabs.
</details>

## Named returned values

Sometimes it is useful to give a name to the returned value and use it as a variable.

```python
func myfunc(a: Int, b: Int) -> (res: Int) {
    if (a > b) {
        res += a;
    }
}
```

This is equivalent to
```python
func myfunc(a: Int, b: Int) -> Int {
    res: Int;
    if (a > b) {
        res += a;
    }
    return res;
}
```

### Multiple returned values

XY functions can return multiple value. In that case all the returned values have to be named.

```python
func myfunc(x: Int, y: Int) -> (a: Int, b: Int) {
    a = y;
    b = x;
}
```

Inside the function body the returned values are threaded as if they were variables.
When the function terminates the returned values are the values the variables had at the time of termination.

### Returned statements and multiple returned values

`return` can be used to assign values to the return value variables and terminate the execution of the function.

```python
func myfunc(x: Int, y: Int) -> (a: Int, b: Int) {
    return a = y, b = x;
}
```

This is called a named return. The assignments can be omitted (unnamed return)
```python
func myfunc(x: Int, y: Int) -> (a: Int, b: Int) {
    return y, x;
}
```

**The expressions in a return statement must either all have names or none**.

A return statement may not assign values to all returned variables.

```python
func myfunc(x: Int, y: Int) -> (a: Int, b: Int, c: Int) {
    # ...
    return a = 10, c = x + y;
}
```

The `return;` statement can be used to terminate the execution of a function.

```python
func myfunc(x: Int) -> (a: Int, b: Int, c: Int) {
    a = x - 10;
    b = x * 2;
    c = x + 20;
    if (a > b) {
        return;
    };
    c *= 2;
}
```

is equivalent to

```python
func myfunc(x: Int) -> (a: Int, b: Int, c: Int) {
    a = x - 10;
    b = x * 2;
    c = x + 20;
    if (a <= b) {
        c *= 2;
    };
}
```

## Multiple assignment

```rust
func compute(x: Int) -> (a: Int, b: Int) {
	return x * 2, -x;
}

func main() {
    (x:, y:) = compute(5);
}
```

It is very common to start with a function that returns just a single value and the add another one. To support these cases
the number of variables on the left hand size of a `=` may be less the number of returned values.

```rust
func main() {
    x := compute(5);
}
```

In that case the value returned in `a` will be assigned to `x`. The value returned in `b` will be ignored.

### Void functions

Functions that don't return a value indicate this by using the follow syntax

```rust
func myvoid() -> () {
}
```

or simply

```rust
func myvoid() {
}
```
