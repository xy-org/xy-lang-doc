---
title: Primitive Types
parent: Expressions
nav_order: 5
---

## Numeric Types

| Type        | Description | Size |
|:-------------|:------------------|:--------|
| Byte / Ubyte    | Signed / Unsigned Integer | 8 bits |
| Short / Ushort  | Signed / Unsigned Integer | 16 bits |
| Int / Uint      | Signed / Unsigned Integer | 32 bits |
| Long / Ulong    | Signed / Unsigned Integer | 64 bits |
| Size / Usize    | Signed / Unsigned Integer | Same as [Ptr](#pointers) |
| Float           | Signed floating point number   | 32 bits |
| Double          | Signed floating point number   | 64 bits |

Signed integer types are encoded using 2s complementary arithmetic. Floating
point numbers are encoded following IEEE-754.

`Size` and `Usize` are the only platform dependant numeric types.

{: .reason }
> Following the principe of [software runs on real hardware]({% link docs/intro/case-for-xy.md %}#software-runs-on-real-hardware) we have to
> account for the variety of systems out there.
>
> **Why is Size a separate type and not an alias of Int or Long?** Having `Size`
> as a separate type allows for more expressiveness and type safety. `Size`
> expresses something platform dependant. `Int`, `Long` are application
> specific.

## Numeric Constants

Numeric constants in XY always have a type and the language *never* does
automatic type conversion except for the constant `0` which can be converted to
any other numeric type.

{: .reason } Automatic type conversion can be a source of issues. It also
doesn't align well with function overloading. Zero is the only exception because
zeroing out variables is a vary common operation and specifying the type of
every zero gets annoying.

### Integer constants

Integer constants are by default of type `Int` unless otherwise indicated by a
type specific suffix:

| Suffix | Type |  Example |
|:------------------|:-------------|:-------------|
| `b` | Byte |  `120b`            |
| `ub` | Ubyte |  `250ub`            |
| `s` | Short |  `-127s`            |
| `us` | Ushort |  `2us`           |
| (no suffix) | Int (default type for numeric constants)|  `123`|
| `u` | Uint |  `0u`            |
| `l` | Long |  `3l`            |
| `ul` | Ulong |  `3ul`            |
| `z` | Size |  `1024z`            |
| `uz` | Usize |  `2048uz`            |

Integer constants can also be specified in base 16 by using the suffix `0x`,
base 8 using the suffix `0`, and base 2 using the suffix `0b`:

| Constant        | Type |
|:-------------|:------------------|
| `0xABC`           | Int specified in base 16|
| `0766ub`           | Ubyte specified in base 8|
| `-0b1100b`           | Byte specified in base 8|

XY also supports arbitrary base integer constants using the following syntax
`0<symbols>(<base>)<type-suffix>`:

| Constant        | Type |
|:-------------|:------------------|
| `0ABC(16)`           | Int specified in base 16. Equivalent to `0xABC` |
| `0AnyLetterYouWant(36)ul`           | Ulong specified in base 36 |
| `-0CAFFEE(32)`           | negative Int value specified in base 32 |
| `011010111(2)ub`           | Ubyte specified in base 2. |
| `01101_0111_1101_1111(2)us`           | Ushort specified in base 2. `_` symbol is ignored. |

{: .note }
> * The '(base)' must follow immediately after the integer constants and there
>   shouldn't be any white spaces around it.
> * The `_` symbol when present in a integer literal is ignored and can be used
>   to improve readability of long numbers. It cannot appear in the begging of a
>   number.
> * 36 is the highest base allowed as the latin alphabet has 26 letters + 10
>   digits.
> * If the integer literal cannot fit in the corresponding integer type then the
>   compiler must report and error.

### Floating point constants

Floating point constants are by default **Float** unless  explicitly specify
using a type suffix.

Reasoning: Practice has shown that 32-bit floats are more than enough for most
tasks. Only a niche set of problems benefit from the added precision of
**Double**.

| Constant        | Type |
|:-------------|:------------------|
| `3.14`           | Float |
| `3.14d`           | Double |
| `.33`           | Float (the leading `0` can be omitted) |
| `2.`           | Float (the trailing `0` can be omitted) |
| `2.d`           | Double |
| `2d`           | Double |
| `3.14_15`           | Double (`_` is ignored) |

## Bit Types

Quite often programs have to work with bits (cases include masks, flags, etc.).
In order to improve expressiveness and type safety XY offers separate types
instead of reusing the integer types.

| Type        | Description |
|:-------------|:------------------|
| Bits8     | 8 bits packed together |
| Bits16    | 16 bits packed together |
| Bits32    | 32 bits packed together |
| Bits64    | 64 bits packed together |

### Conversion to/from Bit Types

There is no syntax for creating literals of `Bits*` types. They way they are
constructed is by using a number and then converting it to the corresponding
`Bits` type through the use of the `bits` function.

| Example        | Description | Result Type|
|:-------------|:------------------|:------------------|
| `0xABC'bits`     | The bits representing the integer `0xABC` | Bits32|
| `0b1100_1100'bits` | The bits `11001100` | Bits32 |
| `(-123l)'bits`   | The bits representing the integer `-123` in 2s complementary | Bits64 |
| `3.14'bits`      |  The bits representing the floating point number `3.14` as represented according to IEEE-754 | Bits32 |
| `-3.14'bits`     | **WARNING** Due to operator precedence first we get the bits of `3.14` and then the `-` operator is applied inverting the bits | Bits32 |
| `bits(-3.14d)`    | A less error prone way of getting the bit representation of `-3.14` | Bits64 |

### Access to individual bits

Notice, it is not important what the platform endianness is. Bits are stored and
retrieved uniformly using the index operator:

```rust
bits: Bits32 = ...;
bits[0]; # least significant bit
bits[31]; # most significant bit
```

Individual bits can also be set using the same operator. The bit index wraps
around ensuring bit operations always succeed.

## Booleans

Booleans are represented using the `Bool` type and the constants `true` and
`false`.

{: .important }
> `Bool`s are not required to be bytes in disguise. The language views them as
> bits meaning:
> * Bools have a `sizeof` 0 i.e. zero bytes
> * Bools have no address
> * Its not possible to have a `mut Bool` parameter of a function.

{: .reason } A boolean requires just 1 bit of information. Packing it in a byte
means wasting 7/8 bits which is unacceptable considering how slow and precious
memory is. Turning `Bool` into a sub-byte type allows the compiler to optimize
much better.


## Pointers

### The case for pointers

Nothing compares to the power and freedom that pointers provide. They are a
fundamental to how hardware works. At the same time is very easy to [make
mistakes]({% link docs/intro/case-for-xy.md
%}#with-great-power-comes-great-responsibility) when dealing with pointers. XY
provides the means to work with pointers "locally" i.e. withing the same data
structure or functions. Outside of that the use of [indices]({% link
docs/expressions/indices.md %}) is preferred.

Pointers are of type `Ptr`. The type they point is attached by the means of a
tag. Pointer arithmatic is allowed with pointer subtraction returning a `Size`.
