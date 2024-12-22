## in Statements

Mnemonic: in the con

```xy
tree: Tree~Nodes;
varDecl := tree'make(VarDecl)
in (tree) {
    [varDecl := 'new(VarDecl)] .= {...}
    [varDecl] .= {name=..., value=..., type=...}
}
```