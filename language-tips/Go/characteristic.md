
# Important characteristics
- concurrency
    - goroutines(concurrent function execution), channel(communication mechanism between goroutines)
    - main function also runs in a goroutine
- data Abstraction
- OOP
- automatic memory management (Garbage collection)
- package system
    - Standard library consists of 100 packages
    - Only package main is executable program, not library
- first class function
- system call interface
- immutable strings which defaults UTF-8
- type system (concrete type - Named struct, abstract types - interface)
    - method : function that associated with a named type
    - interface in Go is not represneted or implementation, rather it makes us to treat different concrete types in the same way based on what methods they have

- no implicit numeric conversions
- no constructors / destructors
- no operator overloading
- no default parameter values
- no inheritance, no class (use composition instead)
- no generics
- no exceptions
- no macros
- no function annotations
- no thread local storage
- no pointer arithmetic
    - though it is visible by `&` and access to value by `*`

untyped scripting language `<` sa


- struct
    - struct is group of values called fields, often different types

----
# Go tool
- download source files under $GOPATH directory
> go get gopl.io/ch1/helloworld
- Go documentation
> go doc [function-name]
> godoc (local server)
> GoDoc (online, hosted on Bitbucket, GitHub, etc[)
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
