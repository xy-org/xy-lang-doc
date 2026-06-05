---
title: Operators
parent: Expressions
nav_order: 10
---

# Operators

XY has the following operators:

| Precedence | Operator | Associativity |
|:-----------|:---------|:--------------|
| 12 | `^a` `[a]` `'func()` | left-to-right → |
| 11 | `a~Tag`, `a++`, `a--`, `a.b`, `func()`, `a[b]`, `a{b}`, `a'func`, `a..tag` |  |
| 10 |  `+a`, `~a`, `-a`, `!a`, `&a`, `%a`|  |
| 9 | `a \func b`, `a ^ b` |  |
| 8 | `a * b`, `a / b` |  |
| 7 | `a + b`, `a - b` |  |
| 6 | `a < b`, `a <= b`, `a > b`, `a >= b`, `a:b`, `a+:b`, `a-:b`, `a*:b` |  |
| 5 | `a == b`, `a != b`, `a in b` |  |
| 4 | `a && b` |  |
| 3 | `a \|\| b`, `a \| b` |  |
| 2 | `a = b`, `a += b`, `a -= b`, `a *= b`, `a /= b`, `a ^= b`, `a .= b` `a .= {b}`, , `a =< b`, `a @= b` |  |
