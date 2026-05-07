---
title: The Case for XY
parent: Intro
---

# The Case for XY

## Fundamental Principles

The following principles form the basis of XY. They are threated as axioms
although some evidence is provided to support them.

### Software is practical not theoretical

No one pays for software that runs in theory. The entire field is based on
practice.


### Everything is an illusion but some illusions are useful

The entire digital world is an illusion. The text you are reading right now
doesn't really exist. It is just a grid of pixels arranged carefully to create
the illusion of text when looked from afar. Numbers are simply a series of bits
interpreted in a specific way. Even bits don't really exist - they are often
just voltages below or above a threshold. Look at the data sheet of any
transistor and you will see it is an analog device. However if we arrange the
transistors in a specific way and choose an appropriate voltage as a threshold
then we can pretend (create the illusion) that it is a digital system. It's just
an illusion but a very useful one.

When you call a function with some arguments, the arguments don't really
"exist", they are just offsets on the stack. Even functions don't exist, a
program is a long list of instructions and a func call is simply a jump to some
address. Structs or classes in C/C++ are even less than that. Once compilation
finishes they disappear barely leaving a trace. They are all illusions created
by the programming language but very useful illusions.

### Software developers are well-meaning but error-prone

We are all humans and we all make mistakes. A programming language should
account for this.

### Indirect calls are a powerful tool to be used carefully

Indirect (virtual) calls are very powerful but "with great power comes great
responsibility". Unfortunately object-oriented languages trivialize them. This
is a major issue with OOP. Such calls are made all the time without so much as a
second thought.

### Performance problems cannot be solely solved by hardware upgrades

Performance optimization is a nuisance. It's difficult, time-consuming,
non-functional. Highly optimized code tends to be less readable, less portable,
more difficult to change. Optimization is never truly complete; there's always
room to squeeze out more performance. Premature optimization is a source of
evil.

At the same time, hardware computational power has grown exponentially over the
years. Why bother optimizing a program to run twice as fast on today's
processors, when tomorrow's processors will execute it twice as fast even
without optimizations? Human time is expensive, hardware is relatively cheap.
Can we ignore the question of performance?

Hardware is cheaper than human labor but it's not free. As you start adding
processing power, the cost can quickly go out of control. Anyone who has
experience with cloud providers like AWS knows how quickly the cost can
increase. The time when users would install a program and it would have full
access to the resources of the machine is long gone. Programs compete with other
programs that run in parallel. There are also virtual machines and containers
all running in parallel and competing for resources. And we now have
battery-powered devices like smartphones, and software has to be efficient not
just in terms of cycles but also power consumption.

XY's perspective: Performance is a non-functional requirement and as such it
makes sense to postpone any work on it for a later stage. But when that time
comes, XY provides the necessary tools to address it.

### Macro and micro optimizations

A common way to analyze algorithms is to use the big-O notation. When two
algorithms both have `O(n)` running time we say they have the same running time
down to a constant. So instead of writing `O(f(n))` a more explicit way would be
to write `c*f(n)` where `c` is some constant depending on the algorithm and
platform. When optimizing a program we can optimize both parts of the equation.
Optimizing `c` is what we call micro optimizations, optimizing `f(n)` is a macro
optimization. The developer should focus on macro optimizations, as those are
difficult and cannot be automated. The language/compiler should take care of the
micro optimizations as these are often easy and can be automated.

There is a gray area of course but generally developers are responsible for
lowering the complexity of an algorithm and the compiler for lowering the hidden
constants. This ensures people spend their time where it can make the most
difference.

### Software runs on real hardware

There is a huge variety of hardware out there so it makes sense to have some
sort of abstraction over it. However we should not forget that it is real
hardware that ultimately runs a program and not the idealized abstraction.

### Language, compiler, and build system should work together

These are tools that are there to help. They should not compete with each other
but work together. Developers should not fight any of them. They should fit
together like the pieces of a puzzle.

### The proof is in the tasting

A good piece of software is one that allows its users to do their jobs quickly
and efficiently. By the same token, a good programming language is one that
allows developers to create good software. How do we know if software is good?
We test it, we use it. How do we know if programming language is good? Again, we
test it, we use it. Who are the first users of a programming language? It's the
creators themselves. This means, the creators of a language should actually use
their language and write software with it.

### Data is more important than code

Clean, well ordered data is more important than a clean, well written algorithm. In fact, algorithms are usually dictated by the data we have and its format. Bad algorithms can be fixed much easier than badly structured data.

### C is the most influential language

C is so influence because of its simplicity and power.

## What sets XY apart

### Based on practice, not theory

XY is neither object-oriented, nor function. All of its features are extracted from practice. It strives to provide the minimum set of features, that allow for the best possible results.

### Relative simplicity

XY concerns itself with **code, data, compilation and packaging, expressiveness**.

No preprocessor, no meta-programming sub-language, no built-in reflection.

### Separation of data and code

XY tries to keep the two as far apart as possible. There is not mixing of data and code. And data and code are compiled in different passes.

### Boldness

Life is too short for another boring language. XY tries to be different. It's not a language for everybody and that's OK.
