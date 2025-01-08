---
title: Hello Zero
nav_order: 1
---

# Hello Zero

It is an old tradition for the first program in a new programming language to
be a program that prints out `Hello World`. However `xy` as a language is fairly
minimalist - it defines just the semantics of the language and no standard library.
The `xyc` compiler follows that principle and is just a compiler - no libraries
included. All this means that in order to first print anything out to the
terminal first we need to install a library that allows us to print messages.
Which is a bit more involved. So to keep things simple let's start with the
simplest possible program - one that doesn't do anything and just returns 0.

```python
def main~EntryPoint() -> int {
    return 0;
}
```

Save this snippet in a file called `hellozero.xy`. In order to compile and run:

```bash
xyc hellozero.xy
./hellozero
echo $?
```

Et voilà! You should see a big, fat zero. It ain't exiting but it is a solid
beginning.