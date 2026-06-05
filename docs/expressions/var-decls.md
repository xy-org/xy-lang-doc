---
title: Variables
parent: Expressions
nav_order: 0
---

# Variables

The general syntax for declaring a variable is:
```rust
    varName : Type = value;
```

The `Type` can be omitted and deduced from `value`. If `value` is not present then the type has to be specified.
Variables are immutable by default but can be made mutable by use of the `mut` keyword. Here are a few examples:


| Expression        | Explanation          |
|:-------------|:------------------|
| `a : Type = value;`           | Immutable variable called `a` of type `Type` with value `value` |
| `a := value;` | Same as above but the type is automatically deduced from `value`   |
| `a : mut Type = value;`           | Mutable variable called `a` of type `Type` with value `value`      |
| `a : mut = value;`           | Same as above but the type is automatically deduced from `value` |
| `a : mut Type;` | Mutable variable called `a` of type `Type` initialized with the default value of `Type` |
| `a : Type;` | Same as above |

{: .highlight }
> Variable declarations use the colon operator just as slices do.
>
> XY can reuse the same operator as assigning to a slice makes no sense. An expression involving the `:` operator is considered a variable declaration if:
>  * the keyword `mut` appears
>  * the expression is on the left side of a `=` operator
>  * the expression is a top level expression i.e. it appears in a block instead of inside another expression.

{: .note }
> * The `mut` keyword must appear before the type.
>
> * If no initial value is specified then the variable is considered mutable regardless of the presence of `mut`
>
>   Reasoning: immutable variables with value equal to the default value of a type aren't very useful because we can just use type type.
> * `:=` is simply the composition of the unary post-fix operator `:` followed by the `=` operator. The following expressions are identical `a := value;`, `a: = value;`, `a : = value;`.

## Variable declarations as expressions

The result of a variable declaration is an [index](...) to the defined variable. Which means variable declarations can be chained like so:

```rust
x := y := z := 0;  # 3 immutable variables all initialized to 0
i : mut = j : mut = k : mut = 0; # 3 mutable variables all initialized to 0
```

In practice this is not very useful but it feels natural for a var decl to be an expression.

## Variable lifecycle

Assignment is performed using the '=' operator. The result of the '=' is an index to the variable assigned.

Variables exist for the duration of the block they are defined in. When execution reaches the end of a block the variables in that block get their destructors called in reverse compared to the order they were declared.

