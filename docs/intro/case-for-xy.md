---
title: The Case for XY
parent: Intro
nav_order: 20
---

# The Case for XY

## Fundamental Principles

The following principles form the basis of XY. They are threated as axioms
although some evidence is provided to support them.

### Programming is a form of communication

When programming a developer communicates with atleast 3 other parties:
 * The compiler - the easiest to communicated with. The protocol (i.e. language)
   is set and relatively simple. The comunication is bidirectional i.e. the compiler can
   respond to your actions.
 * The processor - could be a cpu, a gpu, or any other chip. This communication is more
   difficult. Processors tend to follow instructions blindly and complain only in exceptional
   cases.
 * The maintainer - the most difficult communication. It is complitely unidirectional -
   the creator of a piece of code communicates with a future maintainer.
   The reverse communication is impossible. Often the original creator and the maintainer
   are one and the same person but displaced through time. Worst of all this communication
   is not mandatory - the developer may choose to remain silent to the maintainer.

XY's perspective: Just like any other programming language XY focuses on the first
two kinds of communication but provides some functionality to support the third kind:
 * Interpolation in doc strings
 * Different ways to call a function depending on intent
 * Reliance on context instead of explicitness which mirrors human speach

### No silver bullet

Any approach to software development (object oriented, function, etc) has its
advantages and disadvantages. Previous attempts to apply one-size-fits-all
solutions have produced mixed results at best. XY has its own way of looking at
things and its not for everybody and every problem.

### Everything is an illusion but some illusions are useful

The entire digital world is an illusion. The text you are reading right now
doesn't really exist. It is just a grid of pixels arranged carefully to create
the illusion of text when looked from afar. Numbers are simply a series of bits
interpreted in a specific way. Even bits don't really exist - they are often
just voltages below or above a threshold. Transistors are analog devices however
if we arrange them in a specific way and choose an appropriate voltage as a
threshold then we can pretend (create the illusion) that it is a digital system.
It's just an illusion but a very useful one.

Programming langauges are also full of illussions: functions are just addresses
in a long list of instructions, arguments are offsets on the stack, structs and
classes get decomposed barely leaving a trace. These are all illusions created
by the programming language but very useful illusions.

### Data is more important than code

The separation of code and data is yet another illusion. After all code is just
a special kind of data. But it's useful to keep the two separated.

Clean, well ordered data is more important than a clean, well written algorithm.
In fact, algorithms are usually dictated by the data we have and its format. Bad
algorithms can be fixed much easier than badly structured data.

### Software developers are well-meaning but error-prone

We are all humans and we all make mistakes. A programming language should
account for this.

### One can always shoot oneself in the foot

It doesn't matter how hard a language tries to prevent mistakes, one will always
be able to shoot onself in the foot. A language should provide guardrails (see
point above) but not go into the extreme and assume developers are incompetent
and need baby-sitting.

### With great power comes great responsibility

The more powerful a feature is the more difficult it is to use and easier it is
to make mistakes when doing so.

### Indirect calls are a powerful tool to be used carefully

Indirect (virtual) calls are very powerful but "with great power comes great
responsibility". Unfortunately object-oriented languages trivialize them. This
is a major issue with OOP. Such calls are made all the time without so much as a
second thought.

### Performance problems cannot be solved solely by hardware upgrades

Can we ignore the question of performance? After all performance optimization is
a nuisance. It's difficult, time-consuming, non-functional. Highly optimized
code tends to be less readable, less portable, more difficult to change.
Optimization is never truly complete; there's always room to squeeze out more
performance. Premature optimization is a source of evil.

At the same time, hardware computational power has grown exponentially over the
years. Why bother optimizing a program to run twice as fast on today's
processors, when tomorrow's processors will execute it twice as fast even
without optimizations? Human time is expensive, hardware is relatively cheap. So,
can we ignore performance?

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
hardware that ultimately runs a program and not some idealized abstraction.

### Language, compiler, and build system should work together

These are tools that are there to help. They should not compete with each other
but work together. Developers should not fight any of them. They should fit
together like the pieces of a puzzle.

### The proof of the pudding is in the eating

A good piece of software is one that allows its users to do their jobs quickly
and efficiently. By the same token, a good programming language is one that
allows developers to create good software. How do we know if software is good?
We test it, we use it. How do we know if programming language is good? Again, we
test it, we use it. Who are the first users of a programming language? It's the
creators themselves. This means, the creators of a language should actually use
their language and write software with it.

### C is the most influential language

C is so influence because of its simplicity and power.

## What sets XY apart

### Focus on practice, not theory

XY takes a page out of C playbook and it is neither object-oriented, nor
function. The features it provides are designed to be orthogonal and based in
practice instead of theory.

### Relative simplicity

XY concerns itself with **code, data, compilation and packaging,
expressiveness**.

No preprocessor, no meta-programming sub-language, no built-in reflection.

### Separation of data and code

XY tries to keep the two apart and limit their mixing.

### Boldness

Life is too short for another boring language. XY tries to be different. It's
not a language for everybody and that's OK.

## XY overview

 * Statically typed
 * Imperative
 * Minimizes indirection
 * Holistic approach
 * Heavily inspired by C

## Primary use case for XY

The primary use-cases considered while developing the language are
 * Soft realtime systems (e.g. video games)
 * Distributed systems (e.g. web servers, databases)
 * Simulation software
 * Web-browsers
