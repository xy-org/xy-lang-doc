## Slicing and Indexing

```
c[a:b] <=> c'get(slice(start=a, end=b))
c[a:] <=> c'get(slice(start=a))
c[:b] <=> c'get(slice(end=b))
c[a::s] <=> c'get(slice(start=a, step=s))
c[:] <=> c'get(slice())
c[a:b, d] = v <=> c'set(slice(a, b), v)
c[a:b, .atom] = v <=> c'set(slice(a, b), .atom, v)
a:b~Kelvin:c <=> slice(a, b~Kelvin, c)