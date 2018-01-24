# Program
```
expressions + operation -> larger expression
expression -> statement
statements -> control flow
statements -> function
function -> src file, package
```

# Names
- 25 keywords (can't be used as variable name)
- three dozen predeclared names (can be redeclared)
  1. Constants : true, false, iota, nill
  2. Types : int, uint, uintptr, float, rune, error, complex ...
  3. Functions : imag, new, len ...

# Declarations
- four major kind of Declarations
  1. var
  2. const
  3. type
  4. func

# Variables
- zero value : even __aggregate type__ like an __array__ or a __struct__ has the zero value of all of its elements or fields
```
var name type = expression // assignments can be ommited -< zero value
name := expression // short variable declaration
```
```go
i, j = j, i // FYI. tuple assignmnet
```
- almost of variables can be identified by it's __name__, but some have to be by __expression__, like `x[i]`, `x.i`
```go
p := &x // yields a pointer
fmt.Println(*p) // yields the value
*p = 2
q := new(T) // create zero-valued unnamed variable of type T, returns it's address (so has no name)
fmt.Println(*q)
*q = 2
```
- whenever we take the address of a variable, copy a __pointer__, or copy values of other __reference types__ (slices, map, channels, structs, arrays, interface that contains these types), __aliase__ created

## lifecycle
- lifecycle of package variable is the entire execution of the Program
- local variable(including function parameters, function results) is until becomes unreachable
  - sometimes allocated on heap, sometimes on stack

# Assignments
- Tuple assignment : All of theright-hand side expressions are evaluated before any of the variables are updated
- Any type of variable that can be compared with == and != (satisfying comparability) has assignability

# Type Declarations
```
type named-type underlying-type
```
- Comparability is not satisfied between different named-type, even though underlying type is same
- underlying type determines possible operations on named-type's
- with named type, we can make set of functions associated with type : __method__

## type conversion
```
T(x)
```
- conversion is allowed if they are both has same underlying type
  - exception : convert float to int, convert string to slice of byte (in this case, string data is just copied, since string is immuatable value)
  - FYI, the [reason why string is immuatable](https://stackoverflow.com/questions/22397861/why-is-string-immutable-in-java)
    1. security
    2. efficiency (string pool)
    3. concurrency


# Packages and Files

# Scope
