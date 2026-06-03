## With Statements

The with statement says that a block of code will make use of all the fields of a structure. Usually this is a way to ensure that if a new field is added old the appropriate code will be updated. It also allows for mapping a function across all fields.

```
with (Struct) {

	# all fields must be touched or an error is reported.

	# alternatively _ can be used to idikate that remeaning fields are not required.

}

with (Struct) {
	func(_); # _ will expand to func(field) for every field that hasn't been touched
}

with (val) -> (out: Struct) {
	out._ = func(_); # will generate out.field = func(field) for each untoched field in val. In this case it will be all of the fields
	out = Struct {
		_ = func(_); is an alternative syntax
	}
}

with (val) -> func(_) is shorthand for
with (val) -> (out: %val) {
	out._ = func(_);
}

def copy(s: Struct) with(s) copy(_); this is how we implement a per field copy

basically with says I want to use all the fields. To be read with *all the fields of*(val)

maybe we can do a with any(val) or with any(val) call(...);

shorthand with(val) func(_) = 

This is the opposite of Struct{
fiel=val,
field=val,
. # all fields have been specified
}

and with is all fields have been used
```