---
title: Multiple Assignment
parent: Functions
nav_order: 40
---
## Multiple Assignment and Return Values

```xy
def func(x: uint) -> (y: uint, z: uint) {
	return (y, z);
}

x = func(5); # Ignore z
(x, _) = func(5); # Equivalent
(x:, y:) = func(5);
(x:, y: var) = func(5).(y, x);
x := Struct{a=6, b=10, c=SubStruct(d=10, e=5)};

func(5).(x, y)
func(5).(x, y)
```