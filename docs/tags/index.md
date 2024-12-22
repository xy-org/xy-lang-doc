---
title: Tags
nav_order: 30
---
# Tags

A mechanism to attach a compile-time known value or Class to a struct, func, variable. Multiple tags can be attached to a single object. Attaching tags can be positional or named. But accessing tags is always using a name. Just as args can be passed positional or named by accessing them is always using a name.

```xy
struct EntryPoint {}
def main~EntryPoint() {
}

struct MyStr~[xyCopy=false] {
}

~ is the highest precedence operator so
a := -a~Tag <=> a := -(a~Tag)
a~Tag-b <=> (a~Tag) - b <!=> a~[Tag-b]
```

Strings in tags are treated differently. Problems is runtime strings are glorified pointers compile time strings don't have addresses. So they are treated differently with the help of a special type `xy.ctti.str`.