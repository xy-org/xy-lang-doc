---
title: Macros
parent: Functions
nav_order: 30
---

# Macros
**A macros is a special kind of function that has a boundary expression as it's body.**

```xy
func <macroname>(<param-list>) = <expression>;
```

Functions that use this shorthand notation (i.e. no explicit return type and single-line body)
are called macros.

{: .its-a-trap }
Macros are not just syntax sugar. They are special in curtain cases. Refer to [Boundary Expressions]()
for more info.

```importaint macros in XY are not the same as macros in C```