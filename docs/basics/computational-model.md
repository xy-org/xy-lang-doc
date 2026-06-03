---
title: Computational Model
parent: Basics
nav_order: 30
---

# Computational model

XY sees the world as composed of **Execution Units** (EUs). Each EU
 * executes code sequentially
 * has a stack where temporary data is stored
 * has a state where EU-wide data is stored

**EUs communicate using a message passing mechanism and don't share memory**. A
program consists of one or more EUs.

This is not exactly how computers work in the real world but **the language,
compiler, and libraries all work together to create this illusion.**

This model is not unique ot XY, it has been lifted directly from the field of
distributed computing. We believe its is powerful enough to encompass most use
cases, it includes parallelism by default, and the lack of shared memory makes
it easier to program. At the same time the illusion can be broken in cases where
a different approach is necessary.