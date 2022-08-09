# GO!! Learning GO Language

---

This is not learning path, this is just a cheat sheet for understand how to write in go lang.
So you need understand basic of algorithm first to undestand this repo.

---

# 1. Input and Output

## Input

example :

```go
var name string
fmt.Scanln(&name)

```

## Output

example :

```go
fmt.Println("the output value")
```

# 2. Variable, Data Types, and Constanta

## Variable

example :

```go
var name string
```

## Data Types

following documentation in builtin package in golang there is several data types that I covered and everything that variables can stored.
for shorthand declaration when you want or know about the values and direct store in variables, you can write without `var` keyword and use `:=` instead.
go lang will decision what data type will use for the variable.

### Boolean (bool)

bool is the set of boolean values, true and false. true and false are the two untyped boolean values.

example :

```go
var isMale bool
// or
isMale := true
```

| Value Type |
| ---------- |
| true       |
| false      |

### Integer

example :

```go
var number int
// or
number := 12
```

| Data Type | Minimum              | Maximum              | Description                                        |
| --------- | -------------------- | -------------------- | -------------------------------------------------- |
| uint8     | 0                    | 255                  | uint8 is the set of all unsigned 8-bit integers.   |
| uint16    | 0                    | 65535                | uint16 is the set of all unsigned 16-bit integers. |
| uint32    | 0                    | 4294967295           | uint32 is the set of all unsigned 32-bit integers. |
| uint16    | 0                    | 18446744073709551615 | uint64 is the set of all unsigned 64-bit integers. |
| int8      | -128                 | 127                  | int8 is the set of all signed 8-bit integers.      |
| int16     | -32768               | 32767                | int16 is the set of all signed 16-bit integers.    |
| int32     | -2147483648          | 2147483647           | int32 is the set of all signed 32-bit integers.    |
| int16     | -9223372036854775808 | 9223372036854775807  | int64 is the set of all signed 64-bit integers.    |

### Floating Point

```go
var number float32
// or
number := 32.2
```

| Data Type  | Minimum         | Maximum        | Description                                                                         |
| ---------- | --------------- | -------------- | ----------------------------------------------------------------------------------- |
| float32    | 1.18 \* 10^-38  | -3.4 \* 10^38  | float32 is the set of all IEEE-754 32-bit floating-point numbers.                   |
| float64    | 2.23 \* 10^-308 | 1.80 \* 10^308 | float64 is the set of all IEEE-754 64-bit floating-point numbers.                   |
| complex64  |                 |                | complex64 is the set of all complex numbers with float32 real and imaginary parts.  |
| complex128 |                 |                | complex128 is the set of all complex numbers with float64 real and imaginary parts. |

### String

string is the set of all strings of 8-bit bytes, conventionally but not necessarily representing UTF-8-encoded text. A string may be empty, but not nil. Values of string type are immutable.

always between double quote ("")

example :

```go
var name string
// or
name := "salman"
```

### Alias

example :

```go
var number int
// or
number := 33
```

| Data Type | Alias for            | Description                                                                                                                                                  |
| --------- | -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| byte      | uint8                | byte is an alias for uint8 and is equivalent to uint8 in all ways. It is used, by convention, to distinguish byte values from 8-bit unsigned integer values. |
| rune      | int32                | rune is an alias for int32 and is equivalent to int32 in all ways. It isused, by convention, to distinguish character values from integer values.            |
| int       | int32                | int is a signed integer type that is at least 32 bits in size. It is a distinct type, however, and not an alias for, say, int32.                             |
| uint      | uint32               | uint is an unsigned integer type that is at least 32 bits in size. It is a distinct type, however, and not an alias for, say, uint32.                        |
| uintptr   | unsafe pointers uint | uintptr is an integer type that is large enough to hold the bit pattern of any pointer.                                                                      |

### Any

any is an alias for interface{} and is equivalent to interface{} in all ways.

example :

```go
var anything any
anything = 32
anything = "salman"
```

### Array

predeclaired array must with lenght of array, and the data types of array values.

example :

```go
// when you want to create array, and know how long it is
var arrOfStr [3]String
arrOfStr[0] = "salman"
arrOfStr[1] = "thoriq"
arrOfStr[0] = "al farisyi"

// or
var grades = [3]int{
    90,
    80,
    95,
}

// when you dont know how long the array is you can use like this.
// But you can add or push new value for the existed array.
var otherArr = [...]any{1, "a", true}
```

### Slice

Just remember, slice is not dynamic array! It just a view on an array.

example :

```go

s := []int{2, 3, 5, 7, 11, 13}
printSlice(s)

// Slice the slice to give it zero length.
s = s[:0]
printSlice(s)

// Extend its length.
s = s[:4]
printSlice(s)

// Drop its first two values.
s = s[2:]
printSlice(s)

```

### Map

Map is like object in javascript

example:

```go
myMap := map[string]string{
    "name":    "salman",
    "address": "jakarta",
}
```

### Function

example :

```go
blacklist := func(name string) bool {
    if name == "anjing" {
        return true
    }
    return false
}
```

## Constanta

example :

```go
const phi = 3.14
```

# 3. Arithmatic

example variables for arithmatic operating purpose

```go
a := 10
b := 20
```

| Operator | Description                                                      | Example             |
| -------- | ---------------------------------------------------------------- | ------------------- |
| +        | Adds two operands                                                | `a + b` gives `30`  |
| -        | Subtracts second operand from the first                          | `a - b` gives `-10` |
| \*       | Multiplies both operands                                         | `a * b` gives `200` |
| /        | Divides the numerator by the denominator.                        | `b / a` gives `2`   |
| %        | Modulus operator; gives the remainder after an integer division. | `b + a` gives `0`   |
| ++       | Increment operator. It increases the integer value by one.       | `a++` gives `11`    |
| --       | Decrement operator. It decreases the integer value by one.       | `a--` gives `9`     |

# 4. Conditional

## If Else

example :

```go
name := "faris"

if name == "salman" {
    fmt.Println("hello salman")
} else if name == "faris" {
    fmt.Println("hello faris")
} else {
    fmt.Println("hello, there")
}

// this is shorthand for if statement.
// The variable only use for if scope
// after if the variable will be destroyed
if length := len(name); length > 5 {
    fmt.Println("Name too ong")
    fmt.Println("character length = ", length)
} else {
    fmt.Println("Good name")
    fmt.Println("character length= ", length)
}
```

## Switch

example :

```go
name := "ai"

switch name {
case "salman":
    fmt.Println("hello Salman")
case "faris":
    fmt.Println("hello Faris")
default:
    fmt.Println("hello, There")
}

// same with if, there is short statement for switch
// also you can match with multiple case
switch length := len(name); length {
case 1, 2, 3:
    fmt.Println("Name too short")
case 4, 5:
    fmt.Println("Good name")
default:
    fmt.Println("Name too long")
}

// Switch also can stand without expression
length := len(name)
switch {
case length < 4:
    fmt.Println("Name too short")
case length == 3:
    fmt.Println("Good name")
default:
    fmt.Println("Name too long")
}
```

# 5. Looping

Go lang only provide `for` looping

example :

```go
// natural for
for i := 0; i < 10; i++ {
    fmt.Println("1. perulangan ke ", i)
}

// loop while do style
counter := 1
for counter <= 10 {
    fmt.Println("2. perulangan ke ", counter)
    counter++
}

// natural loop inside slice
slice := []string{"salman", "thoriq", "al farisyi"}
for i := 0; i < len(slice); i++ {
    fmt.Println("index ke", i, "=", slice[i])
}

// using for-range, it is like for of in javascript
for index, val := range slice {
    fmt.Println("index", index, "=", val)
}

// when we just need the value without the indexes
for _, val := range slice {
    fmt.Println("value =", val)
}
```

# 6. Function

example :

```go
// Main Function, go lang will execute this function first
func main() {
	// called function without parameter and return
    sayHello()

    // called function with parameters and a return
    name := getHello("salman")
    fmt.Println("Hello", name)

    // store function in variable
    printGoodBye := getGoodBye
	fmt.Println(printGoodBye("salman"))

    // called funtion with multiple return
    firstName, midName, lastName := myFullName()
	fmt.Println(firstName, midName, lastName)

    // called funtion with multiple return, but only get the first return
	name, _, _ := myFullName()
	fmt.Println("my name is", name)

    // called multiple return function, which named return
    f, m, l := myFullName()
	fmt.Println(f, m, l)
}

// Function without parameters and return
func sayHello() {
	fmt.Println("Hello World")
}

// Function with parameters and a return
func getHello(name string) string {
	return name
}

// stored funtion in variable
func getGoodBye(name string) string {
	return "Good bye," + name
}

// function with multiple return
func myFullName() (string, string, string) {
	return "salman", "thoriq", "al farisyi"
}

// giving return name for multiple return function
func myFullName() (fName, mName, lName string) {
	fName = "salman"
	mName = "thoriq"
	lName = "al farisyi"

	return
}
```

# 7. Import - Export Modules

