## private parameters:

Private in the sense of `Designed or intended for one's exclusive use.` or `Of or confined to the individual; personal.` 

```xy
in - we copy i.e. =
out - we move i.e. => or =<

a := 5;
func(a);

list.append("str") append gets in i.e. copy; "str" is tmp so no need to do any copying
list.append(a) copy; a is not tmp so we do a copy unless a is never used after.

sum(list) sum gets in i.e. copy; list is not tmp so we need to do a copy unless list is never used after, but it is. so we do a copy.

The need for a copy is determined by the function. For example append does an internal copy so we need to express this in a way different than checking if it is trivially copyable and manually doing the copy otherwise which is very error prone.

Version 2)
in - we move in but not out
out - we move out but not in
inout - we move in and out
var or mut - we define mutability

list.append("str") append gets an in i.e. move in; "str" is tmp so we move it in and its very easy.
list.append(a) append gets and in i.e. move in; so we say no not possible unless explicitly say append(a=>) or append(a'copy)

sum(list) sum gets inout so we do a reference if possible. Otherwise we get an error.

by default they are inouts. 

what if we need a copy!
arr: List~Array; # move in and out
arr: =>in List~Array; # move in and out
arr: =inout;

def swap(arr1, arr1); # will give out an error
def swap(arr[i], arr[j]); # will move them automatically

SO THE SEMANTICS OF PARAMETERS ARE MOVE (NOT VALUE OR REFERENCE)
```

We assume trivial movability, non trivial copy, non trivial dtor.

Separate namespaces for functions and objects