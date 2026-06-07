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
