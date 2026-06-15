---
title: While Loops
parent: Expressions
nav_order: 29
---

# While loops

While loops in XY are very similar to loops in C or Python. Major difference is
loops in XY are expressions i.e. result in a value. Here is the general syntax:

```rust
while (cond) -> (res: Type = initValue) {
    # body
}
```

## Semantics

1. The variable `res` is [created and initialized]({% link docs/expressions/var-decls.md %}).
   `initValue` is evaluated in the current context.
   `res` is defined in a new context (called the loop context).
2. `cond` is evaluated in the current context. It must be and expression of type `Bool`.
3. If `true` then `body` is evaluated in the loop context.
4. If `false` then `res` is used as the result of the `while` expression

{: .note :}
The variable `res` cannot be used in `cond` only in `body`
