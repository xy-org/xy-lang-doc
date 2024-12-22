---
title: Integers
parent: Structs
nav_order: 30
---
## String

Xy has completely delegated support for string to external libraries. It only supports string literals, which can be either ASCII or UTF-8 encoded.

```xy
"abc" is shorthand for def~StringCtor{prefix=""}("abc"'addr, size("abc"))
c"abc" is shorthand for def~StringCtor{prefix="c"}("abc"'addr, size("abc"))
char"a" is shorthand for def~StringCtor{prefix="char"}("abc"'addr, size("abc"))
res := f"abc{num}{res.4}" is shorthand for formated i.e.
tmp := def~StringCtor{prefix="f"}()
tmp'sizeHint(3)
tmp'append("abc")
tmp'append(num)
tmp'append(res, 2)
res := tmp'as(String)

String interpolation cannot be parsed without knowing all of the preficies so this breaks this idea!

"abc{name, 5}"
"abc{name, ".2f"}"

sb"abc{name}{age}"
<=>
sb := stringBuilder()
sb'append("abc")'append(name)'append(age)
output := sb'asString

a := "abc" <=>
json"{a=5}"

len() is the number of codepoints in the case of utf8 maybe codes

"Your name is {name}"
"Your name is {= name}"
"Your name is {.2f name}"
"Your name is {name ".2f"}"
b"{name, 4}"
b"abc{name, 5}"
"{name:int}{age:int, 5}" = inputString <=>
name := inputString'read(int, 5)
age := inputString'read(int, 5)
b"{header: uint, 4~Bytes}{version : ushort, 2~Bytes}" = mem
header := mem'read(int, 4~Bytes)
version := mem'read(ushort, 2~Bytes)
Ptr~Type{type}~Type
def str~StrCtor{prefix=""}()

c"string" -> no interpolation
"string" -> no interpolation
f"interpolation"
r"regex" -> no interpolation
a"scii string" -> interpolation
f""

Always interpolation. But can be disabled in the string ctor
```