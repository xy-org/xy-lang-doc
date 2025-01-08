---
title: Hello World
nav_order: 2
---

# Hello World

As stated previously `xyc` is just the compiler, no libraries included. So to
print anything on the screen first we need to install a library that gives us
this functionality.

{: .reason }
> Standard libraries that come prepackaged with the compiler (or OS)
can be very useful. They lower the barrier to entry into the language as
it is one less thing to install and worry about.
> Unfortunately they tend to 
> * Overgrow and include all sort of
functionality that can easily be left to a "normal" library.
> * Merge with the language or compiler which is just laziness on the side of
the language developers who instead of defining general features available to
all they do niche solutions and gate them behind compiler extension.
> * Be slow to change as they usually require the same rigorous specification
as the programming language itself.

## Installing Dependencies

[libxy](https://github.com/xy-org/libxy/) is the closes thing to a standard
library available to XY programmer. It includes common functionality like
functions for console output. Let's install it.

```bash
# first create a folder that is going to serve as the base of all examples
mkdir xy-tutorial
cd xy-tutorial
# make a dir for our dependencies
mkdir libs
```

Now that the basic structure is in place installing libxy (or any other library)
is as simple as

```bash
git clone --depth 1 -b stable https://github.com/xy-org/libxy.git libs/
```

## Finally Printing Out a Message

Create a file `helloworld.xy` with the following content

```python
import libxy.stdio;
import libxy.string;

def main~EntryPoint() -> int {
    print("Hello World\n");
    return 0;
}
```

And then to compile:

```bash
xyc helloworld.xy -L libs/
./helloworld
```

You should see the message `Hello World`. If you do 🥳. Else complain to the
developers by submitting an [issue](https://github.com/xy-org/xy-lang-doc/issues)
or struggle!

## Explanation

The example is simple but it showcases a lot of the features and ideas of XY.
Let's dissect it line by line.

`import libxy.stdio;` - this imports the `stdio` module from `libxy`. It is the
module that contains the `print` function. XY has structured modules
with submodules and so on (instead of header files and compiler magic like C).

`import libxy.string;` - XY doesn't have builtin strings. This means we have to
import a library that implements them for us.

`def main~EntryPoint() -> int {` - defines a function called `main` tagged as
`EntryPoint` that returns `int`. More about tags latter.

`print("Hello World\n");` - this line is self explanatory - it calls the function
`print` with the string `Hello World\n"

## Peaking Under the Hood

`xyc` works as a source-to-source compiler. It compiles XY source code to C and
then compiles the C code to an executable. To get just the C code run:

```bash
xyc -c helloworld.xy -L libs/
cat helloworld.c
```

Enjoy!