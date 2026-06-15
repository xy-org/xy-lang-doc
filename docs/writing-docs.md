# Tips on writing documentation

## Tools

### Text

Text is the most powerful tool we have, anything can be explained in text. But it
is also the most difficult to use, easiest to make mistakes with. It also requires
effort on the side of the reader. So it must be used carefully.

### Tables

### Diagrams

### Bullet/Numbered lists

Be careful with algorithm-like bullet points. Imperative commands are great for
programming but may not be the best way for writing documentation. Algorithmic
bullet points tend to be overly explicit and difficult to read.

## General points

* Be concise - it's not a book. No one wants to speed much time reading it.
  People want the gist and most important information.
* Think how to get the most result with the least amount of words
* Always be looking for tricks - can I rephrase things in the context of what has
  already been said.

if (cond) -> (res: Res) {
    # body1
} elif(cond1) {
    # body2
} else {
    # body3
}

=>

-> (res: Res) {
    if (cond) {body1}
    elif (cond) {body2}
    else {body3}
}

if (cond) expr
elif (cond) expr2
else expr3

=>

-> (res := %expr) {
    if (cond) {
        res = expr1;
    } elif (cond2) {
        res = expr2;
    } else {
        res = expr3;
    }
}

(if (a > b) a else b)++;

if (a > b) a else b

res := %expr the type is
in(stack) Ptr~res


if (cond(big1, big2)) big1 else big2
don't return an index by default b/c the indices of big1 and big2 may be different

if (cond(big1, big2)) -> (a : in(stack) Ptr~Type) {
    &a =
}

a the type is %a
  the value is Ptr~[%a, in=stack]

a -> evaluates has a type Ptr~[%a, in=stack]

f(a, b, c)

a: Int~[in=arr] = 10;
b: Int~[in=arr] = 20;
c: Int~[in=a] = 10;

c = get(a, 10) => get(get(arr, 10), 10);
 get(get(arr, 10), 20);
# decay get(arr, 10) to ptr. Result is Ptr~[in=arr] store that as a tmp var
# decay get(tmp, 20) to ptr. Result is Ptr~[in=arr] store that as a tmp var

f(a, b)
f(a decay to ptr, b decay to ptr);

a[j] get(a, j) get(get(a, i), j)

get(a, i) -> Ptr~[in=a]
store in a tmp
get(..., j) based on the tmp



def get(arr: Array, i: Int) -> in(arr) Ptr~[^arr..elem] {

}

def get(arr: Array, i: Int) = -> (rf: in(arr) Ptr~[arr..elem]) {
    rf =
}

def get(arr: Array, i: Int) = (in(arr) Ptr~[arr..elem]){}

def get(arr: Array, i: Int) = -> (x: in(arr) Ptr~[arr..elem]) {
    x =
}

def get(arr: Array, i: Int) = get(arr, i, sizeof(arr..elem))~[arr..elem, in=arr];

x := arr[10];

arr[10] -> ptr;

a := Ptr[10];
a := get(ptr);

arr[i];

&(arr[i]);

i~[in=arr];
&arr[i];

get(arr[i], j)
1. compile arr[i] and decay to ref or value stored in a tmp result
2. Return Ptr~[in=tmp_result]

def( a[i][j][k].field1, mod(i), a[i][j][k].field2 )

def( a[i][j][k].field1, mod(i), a[i][j][k].field2 )

