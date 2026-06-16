---
title: While Loops
parent: Expressions
nav_order: 29
---

# While loops

While loops in XY are very similar to loops in C or Python. Major difference is
loops in XY are expressions i.e. result in a value. Here is the general syntax:

```rust
while (cond) -> (res := initValue) {
    ... body ...
}
```

This is equivalent to

```rust
-> (res := initValue) {
    while (cond) {
        ... body ...
    }
}
```

## Semantics

While `cond` is `true`, `body` is executed.

{: .note :}
The variable `res` can be used in `cond` despite the fact its declaration appears after
the `cond` espression.

## Do-While loops

They are very similar to `while` loops except the body is first executed and only then the
condition is checked.

```rust
do -> (res := initValue) {
    ... body ...
} while (cond);
```

is equivalent to

```rust
-> (res := initValue) {
    do {
        ... body ...
    } while (cond);
}
```

{: .note :}
A terminating semicolon is always required at the end of a do-while.

## Named loops

Loops can be given a name. The name can serve two purposes:
 * Add additional information what the loops is supposed to do
 * Be used to `break` or `continue` the loop from within another loop

```rust
while loopName(cond) {
    ... body ...
}

do {
    ... body ...
} while loopName(cond);
```

## Break

The keyword `break` can be used to skip the remaining code in the current iteration
and move to executing the code immediatelly after the loop.
Alternatively the `break` keyword may be followed by the name of the loop to break.

```rust
do {
    while inner(cond2) {
        if (cond3) {
            break outer;
        }
    }
} outer(cond1);
```

## Continue

The keyword `continue` can be used to skip the remaining code in the current iteration
and move to reevaluating the condition. A specific loop to `continue` can be specified
by using its name.

```rust
do {
    while inner(cond2) {
        if (cond3) {
            break outer;
        }
    }
} outer(cond1);
```