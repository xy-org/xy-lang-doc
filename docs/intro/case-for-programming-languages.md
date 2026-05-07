---
title: The Case for Programming Languages
parent: Intro
---

# The Case for Programming Languages

One of the greatest advantages of digital computers is their simplicity. A digital computer needs just 4 operations (and a large enough memory) to solve any solvable problem. A programming languages which offer these operations is called to be Turing complete i.e. any problem can be solved using that language. Turing completeness is a very low hurdle and virtually all programming languages are Turing complete. This means, any solvable problem can be solved in any programming language. So, what is the difference between programming languages then? Why do we even need so many? Why don't we simply choose one language and write all the software in that language? Is it simply a matter of preference?

What separates two languages apart is not the problems they can solve, as they can solve the same problems as long as they are both Turing complete. **What distinguishes languages is the solutions they facilitate.**

For example: an object oriented language is one that facilitates object oriented solutions to problems. Such languages tend to provide polymorphism, abstraction, inheritance, and encapsulation, and attempt to solve problems in the context of these concepts.

A functional language tries to solve problems in the context of closures and immutability. A logic programming language tries to solve problems in the context of formal logic. And so on. **We need a new language if we want to look at things from a certain perspective which is not facilitated by an existing language.**

## Typical Problems

Here are some common problems that a language may concern itself with:
- Flow Control
- Data Description
- Code Separation and Reuse
- Indirection
- Notation and Syntax
- Metaprogramming
- Resource Management (e.g. memory, files, ...)
- Security
- Software, Hardware, and Programmer Fault Tolerance
- Forward/Backward Compatibility
- Interfacing with foreign libraries
- Performance
- Micro-optimizations like SIMD and access to low level capabilities
- Debugging
- Instrumentation
- Massively Parallel Systems, SIMT (e.g. GPUs)
- Systems without Shared Memory (e.g. Distributed Systems)
- Multi-threading

A language has to also answer:
- Is the language domain specific or general purpose?
- Who is the language for?
- What is the abstract machine (i.e. how the language sees the world)
- Compilation vs Interpretation vs JIT vs Virtual Machines

Example: C completely ignores the questions of security but facilitates performance by being very close to the underlying hardware and allowing access to low-level, platform specific APIs. Java on the other hand offers little to extract the maximum performance out of a machine and focuses on providing a secure, object-oriented, hardware-independent environment.
