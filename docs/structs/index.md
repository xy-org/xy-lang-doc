---
title: Structs
nav_order: 20
---

# Structs

Structs is the XY way of representing and describing data. If you are familiar with
C structs then you will feel right at home - no constructors, no inheritance, no
virtual functions.

Structs are assumed to be trivially movable and copyable.

## Every type is a struct

Even primitive types like `int`, and `bool` are structs.

## Defining a Struct

```xy
struct Point{
	x : float;
	y : float;
}
```

To instantiate it:

```xy
p1 := Point{x=0, y=5};
p2 := Point{y=5, x=0};; identical to 1st line
p3 := Point{0, 5};; identical to 1st line
p4 := Point{};; will assign default values to `x` and `y` of 0
```

Each structure has a default value associated with it. If the struct is initiated
implicitly the default value is used. The default value of all primitive types is 0.
So the default value of the `x` and `y` fields will both be 0. So the default value of
Point will be `Point{0, 0}`. In other worlds:

```xy
p: Point;
## p.x == 0
## p.y == 0
```

The default value for each field can be changed in the struct definition:

```xy
struct Color {
    r: float;
    g: float;
    b: float;
    a: float = 1.0f;
}
```
