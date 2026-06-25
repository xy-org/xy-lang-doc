---
title: If Expressions
parent: Expressions
nav_order: 20
---

# If Expressions

If expressions introduce a fork in the execution flow called a branch. The genral form
of if expressions in XY somewhat different then C and allows for multiple possibilities:

```rust
if -> (res: OutType) {
nameOfBranch1(cond1) {
    ... block1 ...
},
nameofBrnach2(cond2) {
    ... block2 ...
},
}
```
{: .note :}
> * There can be as many branches as needed
> * Each branch can be named which improves readability
> * There is no `else` clause
> * The training comman(`,`) after the last condition is optional
> * Branches can have arbitrary identation but usually have the same one as the
> `if` keyword in order to save on space

## Semantics

If-expressions work fairly simply: First `cond1` is executed if `true` then
`block1` is executed. Otherwise the next condition is checked and so on. It is
valid for no condition to be `true`. In that case the result of the expression
is unchanged and has its initial values.

{: .reason :}
> Many langauges have binary if statements: if a condition is true do one thing
> else do another. However experisionce has shown that most branches are not
> binary i.e. at a branch point the code can continue execution in one among
> many possible paths (not just two). Usually this is achieved by chaining if
> statements which dramatically reduces readability.
>
> By allowing for multiple branches and giving each one a name XY strieves to
> improve readability and reduce the need for comments.

## Lowering

An if expression can be lowered to:

```rust
-> (res: OutType) {
    if {
    nameOfBranch1(cond1) {
        ... block1 ...
    },
    nameofBrnach2(cond2) {
        ... block2 ...
    },
    }
}
```

Any of the blocks can be a simple expression (i.e. func call, literal, or
identifier). Example:

```rust
if -> (res: Int) {
    lessThen(a < b) func1(),
    greatherThen(a > b) func2(),
    equal(true) 0,
}
```

then the expression is lowered:

```rust
-> (res: Int) {
    if {
    lessThen(a < b) {
        res = func1();
    },
    greatherThen(a > b) {
        res = func2();
    },
    equal(true) {
        res = 0;
    },
    }
}
```

## Binary If expressions

In rare circumstantces it is still useful to have a binary if expression:

```
if (cond) -> (res: OutType) {
    ... body true ...
} else {
    ... body false ...
}
```

Which is lowered to

```
if -> (res: OutType) {
(cond) {
    ... body true ...
},
(true) {
    ... body else ...
}
}
```

The `else` part is optional.


### Shortcuts

`if`s can also directly return the value of an expressions:

```rust
if (cond) expr1 else expr2;
```

which is lowered to

```rust
if -> (tmp: %expr1) {
(cond) {
    tmp = expr1;
},
(true) {
    tmp = expr2;
}
}
```

Examples:

```rust
min := if (a < b) a else b;
```
