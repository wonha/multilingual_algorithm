
# Important characteristics
- concurrency
- data Abstraction
- OOP
- automatic memory management (Garbage collection)
- package system
    - Standard library consists of 100 packages
    - Only package main is executable program, not library
- first class function
- system call interface
- immutable strings which defaults UTF-8
- type system (concrete type, abstract types - interface)

- ko implicit numeric conversions
- no constructors / destructors
- no operator overloading
- no default parameter values
- no inheritance, no class (use composition instead)
- no generics
- no exceptions
- no macros
- no function annotations
- no thread local storage

untyped scripting language `<` sa






----
# Go tool
- download source files under $GOPATH directory
> go get gopl.io/ch1/helloworld
- Go documentation
> godoc
- Compile, Link, Execute the resulting file
> go run xxx.go
- Compile, Link
> go build xxx.go
- Rewrite code into standard format
    - with `fmt` subcommand, apply go fmt to all the files in the specified package (current dir by default)
> gofmt
- Manages the insertion and removal of import declarations
    - not standard distribution, so download from `go get golang.org/x/tools/cmd/goimports`
> goimports

---
# etc
- os.Args :
    - os : package
    - Args : slice of strings which contains command line arguments
    - os.Args[0]
    - os.Args[m:n] : yields slice that refers to elements m to n-1 (m by default 0, n by defualt len(os.Args))
