---
title: Integers
parent: Structs
nav_order: 20
---

# Integer Numbers

XY provides the following primitive integer types:

 * `byte`, `ubyte` - signed and unsigned 8-bit numbers
 * `short`, `ushort` - signed and unsigned 16-bit numbers
 * `int`, `uint` - signed and unsigned 32-bit numbers
 * `long`, `ulong` - signed and unsigned 64-bit numbers
 * `Size` - unsigned number as wide or wider than the address bus for the specific architecture.

`Size` is the only platform dependant builtin type. Typically it is useful only
for low-level tasks and memory management.

## Literal

Literals follow the well established patterns:

```xy
123 ;; an int in base 10
0xFAE ;; an int in base 16
0744 ;; an int in base 8
0b1111 ;; an int in base 2
```

XY also supports arbitrary base integers

```xy
0120(3) ;; an int in base 3

;; an int in base 36 i.e. the base that includes all numbers and latin letters
0AnyStringYouLike(36);

; the leading `X` part is interpreted as part of the num because of the (36)
0XFFAF(36);

;; 0xABC is just a shorthand for 0ABC(16)
;; 0x755 is just a shorthand for 0755(8)
```

All the examples above specify literals of type `int`. If you want to specify a different type
you have to use any of the following suffixes `t` for byte; `s` for short, `l` for long, `z'` for size

```xy
0xFFs;; a short int (i.e. 16 bit) in base 16
0x1011_0111t;; a byte in base 2
0xABt;; a byte in base 16. Note the trailing lowercase b is interpreted as byte
01230(4)t;; a byte in base 4
```

The general rule is the suffix has the same letter as the first letter of the corresponding type.
If the letter is in the region of 'A'-'F' then the next letter corresponding to a consonant of the type name is used.

## No Implicit Type Conversions

XY doesn't do any imiplicit type conversion even among primitive types. In other words the following
is an error:

```xy
a: int = 0s;; Compilation Error
```

## Bit Operations

XY provides the `bits` function that allows you to access and modify the bits of
an integer type. For example:

```xy
a'bits & b'bits;; binary and
a'bits[0] = true;; trun on bit 0
a'bits = !a'bits;; flip all bits of a
a'bits[1] = !a'bits[1];; Flip bit 1
```

Note: There is no bitwise operators in XY.