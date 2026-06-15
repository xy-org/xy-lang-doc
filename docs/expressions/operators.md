---
title: Operators
parent: Expressions
nav_order: 10
---

# Operators

XY has the following operators:

| Precedence | Operator | Description | Associativity |
|:-----------|:---------|:------------|:--------------|
| 12 | `^a` | Eval expression in caller context | left-to-right → |
| ^^ | `[a]` | Dereferece an index | ^^ |
| ^^ | `'func()` | Func call with with auto deduced first argument | ^^ |
| 11 | `a~Tag` | Attach Tag | |
| ^^ | `a++`, `a--` | Increment / Decrement | |
| ^^ | `a.b` | Get field | |
| ^^ | `a..b` | Get tag | |
| ^^ | `func()` | Func call | |
| ^^ | `a'func` | Func call - OOP syntax | |
| ^^ | `a[b]` | Dereference an index | |
| ^^ | `a{b}` | Construct value | |
| 10 |  `+a`, `~a`| Turn flag on / off | |
| ^^ |  `-a`| Unary minus | |
| ^^ |  `!a`| Boolean not | |
| ^^ |  `&a`| Get offset of index | |
| ^^ |  `%a`| Get default value | |
| 9 | `a \func b` | Func call - operato like syntax | |
| ^^ | `a ^ b` | Exponent | |
| 8 | `a * b`, `a / b` | Multiplication / Devision | |
| 7 | `a + b`, `a - b` | Addition / Subtraction | |
| 6 | `a < b`, `a <= b`, `a > b`, `a >= b` | Comparison | |
| ^^ | `a:b`, `a+:b`, `a-:b` | Slice | |
| 5 | `a == b`, `a != b`, `a in b` |  | |
| 4 | `a && b` | Logical And | |
| 3 | `a || b` | Logical Or | |
| ^^ | `a | b` | Error handling | |
| 2 | `a = b` | Assignment | |
| ^^ | `a += b`, `a -= b`, `a *= b`, `a /= b`, `a ^= b` | Compound assignment | |
| ^^ | `a .= {field=b}` | Assign to fields | |
| ^^ | `a =< b` | Move | |
| ^^ | `a @= b` | Append | |

{: .note :}
> * There is no unary plus
> * No bitwise operations. Instead the [Bit types]({% link docs/expressions/primitive-types.md %}#bit-types) are used.

## Operator overloading

Some operators in XY are just synonyms for functions. This allows for their overloading
using the rules for regular functions. Here are overloadable operators and corresponding
functions:

| Operator | Equivalent Fcall |
|:-----------|:---------------|
| `a + b`    | `add(a, b)` |
| `a - b`    | `sub(a, b)` |
| `a * b`    | `mul(a, b)` |
| `a / b`    | `div(a, b)` |
| `a ^ b`   | `exp(a, b)` |
| `-a`   | `sub(%a, a)` |
| `a++`    | `inc(a)` |
| `a--`    | `dec(a)` |
| `[a]`    | `get(a)` |
| `a[b]`    | `get(a, b)` |
| `a @= b` | `append(a, b)` |
| `!a` | `not(a)` |
| `a == b` | `cmpEq(a, b)` |
| `a != b` | `cmpNe(a, b)` |
| `a > b`  | `cmpGt(a, b)` |
| `a >= b` | `cmpGe(a, b)` |
| `a < b`  | `cmpLt(a, b)` |
| `a <= b` | `cmpLe(a, b)` |
| `a && b` | `and(a, b)` |
| `a || b` | `or(a, b)` |

{: .note :}
>* There is no dedicated func call for unary minus. Instead it is defined as `the value's type's zero minus the value`.
>* Comparison is a bit messy as there are 6 different functions to overload.
  Fortunatelly the [builtin](TODO) module simplifies this task by defining these methods
  in terms of a caller-context function `cmp` which returns a positive `Int` value if
  the first argument is larger than the second, `0` if the two arguments are equal, and a negative
  `Int` otherwise.