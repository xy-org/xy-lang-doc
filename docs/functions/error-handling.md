---
title: Error Handling
parent: Functions
nav_order: 30
---
# Error Handling

Error Handling is way too importaint to be ignored and simply relegated to some
other feature of the language. People realized that we came up with exceptions.
Which unfortunatelly haven really worked that well. XY takes a step backwards and
returns to using return values to signal errors but that is built into the language, doesn't
interfere with normal return values, and the result is automatically checked by the compiler.

Error handling in XY is associated with the `||` operator called the wall operator.
The idea being that bugs with smash their heads against this wall. Here is how to
declare a function that can potentially error:

```xy
def open(name: String) -> File || FilesystemError {
    fd := callOSOpen(name);
    if (fd < 0) {
        error FilesystemError{errno};
    }
    return fd;
}
```

To raise an error from such a function the `error` statement is used. It terminates
the execution of the function and returns the value as an error value from the function.

{: .note }
A function can multiple return types but only one error type.

## Supressing Errors

In expressions errors can be suppressed using the wall operator:

```xy
a := open(logFilename) || stderr;
b := func1(func2(a)) || 0; catches any error in func1 or func2
```

## Handling Errors

```xy
a := func1();
b := func2();
|e: MathError| {
    # Handle any error of kind MathError that my have occurded in the lines before
    # this block. 
}
```

If we want to handle all errors regardless of they type we can do that using the unary wall operator:
```xy
func3(func1() * func2());
|| {
    handle any error of any kind that my have occurded
}
```

## Invariances
Invariances are boolean expressions that (may) get checked right before execution enters the function
body (input invariances) or after it leaves the body (output invariances).
Input invariances are defined using `>>` and output with `<<`.

{: .mnemonic }
An easy mnemonic to remember these symbols is `>>` is a `||` bent in the middle
to the right, pointing towards the function body i.e. it's an input guards.
The the opposite for `<<`

```xy
def open(name: String) -> (file: File) || FilesystemError
>> name'len > 0
<< file'exists
{
    # ... as before ...
}
```

{: .importaint }
Invariances may or may not be checked runtime. The compiler provides ways to turn
off or on runtime invariance checking. Even if it is turned on the compiler may
deduce that an invariant hold and skip checking it runtime. Functions called in
invariant expressions should not have side-effects.
