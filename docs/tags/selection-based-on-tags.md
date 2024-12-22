---
title: Selection based on Tags
parent: Tags
nav_order: 10
---
# Selection based on tags

```xy
# def                 matches
def f(a: Type~Tag1) - Type with Tag1
def f(a: Type~Tag2) - Type with Tag2
def f(a: Type) - Type with any tags or no tags
def f(a: Type~[]) - Type with no tags
def f(a: Type~[!units]) - Type with no units but other tags are still allowed

a := Type{};
f(a);
# the matching algorithm with go though all functions called f and compare the parameters to the provided arguments one by one. At each step it will match the most general one. So in this case it will match f(a: Type).

def f(a: T1, b: T2~[Tag1, Tag2])
def f(a: T1~Tag1, b: T2)

a := T1~Tag1{};
b := T2~[Tag1, Tag2]{};
f(a, b) # will match def f(a: T1~Tag1, b: T2) because a is first compared agains the parameters of the function list
```



```xy
def main() {
	funcs = def~EntryPoint();
	func = callback'def(args)
	funcs = def(
		tags=EntryPoint, positional=[?, Tag2], named=[name=5], args=(Str[]), 					returns=RType, exact=Yes, min=0, max=1
	)
	funcs = def~[?, Tag2, ??, EntryPoint, name=5](Str[]);
	assert funcs'len<=1, "Too many entry points", funcs
	switch (funcs'len) {
	case 0: don't generate anything
	case 1: generate call to funcs[0]
	} else {
		generate error
	}
	entry_points = def~[??, EntryPoint]()
}
```