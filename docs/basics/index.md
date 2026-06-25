---
title: Basics
nav_order: 5
---

# How is this document written

Most specifications are written in plain text, mostly in imperative case, explicitly specifying how
a system (i.e. a compiler, interpreter and so on) should behave. The results in a large document often
consisting of hundred (sometimes thousands) of pages. This approach, if done right, can be very precise but it is also
very labour intensive and the resulting specification can be difficult to read.

XY has a slight different approach making it easier to write and maintain this specification:
 * Features in the langauge are specified by stating:
   * how they should behave
   * how they should not behave
   * what the reasoning behind a certain feature is
   * test vectors
 * Following the principle of [compiler and language working together]({% link docs/intro/case-for-xy.md %}#language-compiler-and-build-system-should-work-together) we assume that anyone reading this document is well intentioned and interested in XY.
 * Diagrams, tables are prefered to text as they communicate more information.
 * Heavy use is made of refering to similar concepts in other languages

## Test Vectors

The test vectors are part of this specification. They are targeted primarily at people interested in building their own
XY compiler but can be used by any reader.

## Lowering

Many features in the langauge are defined in terms of other simpler features. This is called lowering and is heavily used
in XY.
