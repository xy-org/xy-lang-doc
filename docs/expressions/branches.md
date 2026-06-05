---
title: Branches
parent: Expressions
nav_order: 20
---

# Branches a.k.a If Expressions

If expressions are similar to if statements in languages like C or Python:

```rust
if (cond1) {
    doSomething();
} else {
    doSomethingElse();
}
```

The else part is not mandatory.

If expressions are chained using the keyword `elif`:

```rust
if (cond1) {
    onCond1();
} elif (cond2) {
    onCond2();
} else {
    doSomethingElse();
}
```

There can be as many `elif`s as necessary.

## General form

The conditionals are checked one by one starting with the first one. When a condition that is `true` is found the corresponding block is executing.

## Ifs as expressions

`if`s can be used as expressions and return results using the following general syntax

```rust
a := if (cond1) -> (res: Type) {
    res'loadCond1;
} elif (cond2) {
    res'loadCond2;
} else {
    res'loadDefaults;
};
```

In the above example the `if` returns a result using the variable `res`. It is creating with the default value for `Type`. Each branch in the if chain has access to it. The value of the `if` is the value of `res` after the matching block or else is executed.

### Shortcuts

`if`s can also directly return the value of an expressions:

```rust
min := if (a < b) a else b;
```

Or generally:
```rust
if (cond1) expr1
elif (cond2) expr2
else exprElse
```
