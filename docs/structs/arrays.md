---
title: Arrays
parent: Structs
nav_order: 10
---
# Arrays

Arrays are very similar to arrays in C. They are homogeneous, fixed-length, and the
length must be known at compile time except when the array is used as a parameter.

```xy
;; create an array of 2 ints
pair : int[2];

;; assign values of 10 and 20 to the first and second element of the arrays
pair = @[10, 20];

;; accesing individual elements is done using the [] operator
p[0] == 10;

;; individual elements can also be modified
p[1] *= 4;
```
