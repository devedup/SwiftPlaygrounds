//: Playground - noun: a place where people can play

import UIKit

// MARK: BASICS
// -----------------------------------------------------------------------------------------------------


/*
    By the way...

    /* We can nest multi line comments ! Woo hoo*/
*/

// Declare variable and constants

var str = "This is an implicit typed variable"
let con = "This is an implicit typed constant"
var exp: String = "An explicit one"
var x = 0, y = 1.2, z = 3
var red, green, blue: Double

// Printing out to console

print("The value of str is [\(str)]")

// Semicolons not required, unless

var semiColon = "colon";
var needSemiColon = "need semi colon here"; print(needSemiColon)

// Ints

var explicitIntSize: UInt32 = 123
var explicitIntSize2: UInt64 = 12345
var explicitIntSize3: Int32 = 123
var intUsingPlayformSize: Int = 54321

// Double 64bit and Floats 32bit

var imADouble: Double = 1.1
var imAFloat: Float = 0.5
var imAlsoAnInferredTypeOfDouble = 1.23
var imADoulbeToo = 3 + 1.0

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// Other number type

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation”

// Extra zeros and underscores for readability

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Int & Floating Point conversion

let myInt = 3
let myDouble = 4.0
let combined = Double(myInt) + myDouble

// TypeAlias

typealias MyInteger16Bit = UInt16

let myCustomTypeInt: MyInteger16Bit = 16

// Booleans

let falseVar = false
let trueVar = true

// Tuple

let myHttpStatusCode = (404, "Not Found")
let (code, message) = myHttpStatusCode
print("Code \(code) Message \(message)")
print("Code \(myHttpStatusCode.0) Message \(myHttpStatusCode.1)")
let otherHttpCode = (code: 200, message: "ok")
print("Code \(otherHttpCode.code) Message \(otherHttpCode.message)")

// Optionals

let stringNumber = "123"
let optionalInt = Int(stringNumber) // optionalInt is of type Int?
print(optionalInt)

var serverResponse: Int? = 404
serverResponse = nil

var optionalString: String?
if optionalString != nil {
    print("its value is \(optionalString!)")
} else {
    print("its nil")
}


if let optionalString = optionalString {
    print(optionalString) // note no ! mark to unwrap it
} else {
    print("no value")
}

// multipe optional binding

if let a = optionalString, b = optionalInt {
    print("both had value")
} else {
    print("one didn't have value")
}


// Implicitly unwrapped optional

let definiteString: String!
definiteString = "here is the value"
print("Dont need to unwrap \(definiteString)") // if it didn't contain a value... CrASH


// Error Handling

func thisFunctionCanThrow() throws {
    
}

do {
    try thisFunctionCanThrow()
} catch {
    // You need the catch all if the calling method doesn't declare throws
}


// Assertions

func myAssertedFunction() {
    assert(true)
    
}


// Operators

// Typical + - * / and % ++ --
// noteably you can use remainder on floating point

// Assignment

let b = 10
var a = 5
a = b

// Tuple Assignment

let (xa, ya) = (1, 2)


var add = 1 + 2
let sub = 3 - 4
let mul = 5 * 5
let div = 9 / 5
let remainder = 8 % 4
let floatRemainder = 8 % 2.5
//let increment1 = add += 1
//let increment = add += 1
//let decrement =add -= 1
let negative = -add
add += 2
print(add)

// Typical comparison operator == != > < >= <=

// Typical ternary 
var val = 5
let answer = (val > 4) ? "yes" : "no"

// Nil coalescing

var s: String?
var sb = "string"
let string = s != nil ? s! : sb
// or do it like this
let string2 = s ?? sb


// Range operator

let start = 10
let finish = 20
for index in start...finish {
    print("\(index)")
}

for index in start..<finish {
    print("\(index)")
}

// Typical LOGIC operator on boolean values.. ! && ||






// MARK: Strings
// -----------------------------------------------------------------------------------------------------

var emptyString = ""
var alsoEmptyr = String()

if alsoEmptyr.isEmpty {
    
}

var mutableString = ""
let immutableString = ""

// Strings are value types, not reference types

var initialString = "dave"

// not also here that params are constant by default, i made it mutable with var
func workOnString(string: String) {
	var string = string
    string = string + " casserly"
    print(string)
}

workOnString(initialString)
print(initialString)

for character in "dave".characters {
    print(character)
}

let aChar: Character = "a"

let surname = "casserly"

// Concatenation

let result = initialString + "" + surname

// Unicode characters

let dollar = "\u{24}"
let enclosedEAcute: Character = "\u{E9}\u{20DD}"

// Counting

print(result.characters.count)

// See predecessor() successor() startIndex() endIndex() methods removeRange() insert() hasSuffix() hasPrefix()

// Compare strings with == and !=




// MARK: Collection Types
// -----------------------------------------------------------------------------------------------------

var mutableArray = [String]()  // This is also example of creating an empty array
let immutableArray = [String]()

// arrays are bridged with NSArray

// Can also write like this

var array: Array<String>

// Remebers type that is set to it
var someInts = [Int]() // empty
someInts.append(1)
someInts += [4] //same as append
someInts += [7]

// Insert at index
someInts.insert(3, atIndex: 1)
someInts.removeAtIndex(1)

// Set and get
var itemAt2 = someInts[2]
someInts[2] = 5

someInts = [] // it's still an Int array

// Array with default values
var defaultsArray = [Int](count: 5, repeatedValue: 5)

// another array by adding
var anotherIntArray = defaultsArray + someInts

// Array literals
var literals = ["dave", "cass", "davey", "dave"]
var resultLiterals = literals.indexOf("dave")

var count = literals.count

if literals.isEmpty {
	print("yes")
} else {
	print("not empty")
}

// Iteration

for item in literals {
	print(item)
}

for (index, item) in literals.enumerate() {
	print("item \(item) index \(index)")
}

// Sets (Bridged with NSSet)

var letters = Set<Character>()
var genres: Set = ["Rock", "Classical", "Pop"]


// use methods intersect(), exclusiveOr(), union(), subtract() to create Set's from other sets


// Dictionaries

var dictionary = [String: Int]()
dictionary = [:] // empty it

var literalDict = ["dave" : 1, "cass": 2, "lore": 3]

// Optionals returned
if let value = literalDict["tom"] {
	print("got it")
} else {
	print("not in there")
}

// Iterating

for (key, value) in literalDict {
	
}

for (whatever, whoever) in literalDict {
	
}




// MARK: Control Flow
// -----------------------------------------------------------------------------------------------------

for index in 1...5 {
	print("\(index)")
}

let end = 10
for _ in 1...end {
	
}

// for
//for var index = 0; index < 10; index += 1 {
		// this c style is dprecated
//}



// while
var test = true
while test {
	test = false
}

// repeat
test = true
repeat {
	test = false
} while test


// if else
if test {
	
} else if test {
	
} else {
	
}

var testString = "dave"

// Switch - note there is no fall through, so you dont need the break
switch testString {
	case "dave":
		print("dave here")
		fallthrough
	case "tom":
		print("tome here")
	case "dan", "john", "carl":
		print("dan here")
	default:
		print("someone else")
}

// you can use fallthrough to allow it to fallthrough

// interval matching

var intervalInt = 68

switch intervalInt {
	case 0..<10:
		print("ere")
	case 10..<100:
		print("hello")
	default:
		print("someone else")
}


// tuple binding

let point = (0, 0)
switch point {
	case (0, 0):
		print("ere")
	case (1, 0):
		print("hello")
	case (_, 1):
		print("another")
	case (0, let y):
		print("on the x acxis with a value of y \(y)")
	case let (x, y) where x == -y:
		print("another")
	case let (x, y):
		print("note no default case")
}



// continue and break work as normal, fallthrough can be used on a switch case statement

// you can use labels with break and continue 

// use a guard statement to set up design by contract

func aMethodWithGuard(value: Int, contrived: String?) {
	guard value > 5 else {
		return
	}
	guard let contrived = contrived else {
		return // or fatalError()
	}
	print(contrived)
}

// API Availability

// * is required and it means 'any other platform' will execute the if block with the minimum version in the deployment target

if #available(iOS 9, OSX 10.10, tvOS 9.0, watchOS 1.0, *) {
	// do this
} else {
	// do this
}



// MARK: Functions
// -----------------------------------------------------------------------------------------------------


func sayHelloWorld() -> String {
	return "hello, world"
}


func sayHello(personName: String, alreadyGreeted: Bool) -> String {
	if alreadyGreeted {
		return sayHelloWorld()
	} else {
		return sayHelloWorld()
	}
}

// Use a Tuple for multiple returns types:

func minMax(array: [Int]) -> (min: Int, max: Int) {
	var currentMin = array[0]
	var currentMax = array[0]
	for value in array[1..<array.count] {
		if value < currentMin {
			currentMin = value
		} else if value > currentMax {
			currentMax = value
		}
	}
	return (currentMin, currentMax)
}


// external param names

func someFunction(firstParameterName: Int, _ secondParameterName: Int) {
	// function body goes here
	// firstParameterName and secondParameterName refer to
}

// default param values

func someFunction(parameterWithDefault: Int = 12) {
	// function body goes here
	// if no arguments are passed to the function call,
	// value of parameterWithDefault is 12
}
someFunction(6) // parameterWithDefault is 6
someFunction() // parameterWithDefault is 12”

// Variadic parameters - A function may have at most one variadic parameter.

func arithmeticMean(numbers: Double...) -> Double {
	var total: Double = 0
	for number in numbers {
		total += number
	}
	return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)


// In Out parameters:

func swapTwoInts(inout a: Int, inout _ b: Int) {
	let temporaryA = a
	a = b
	b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

// Function types

// Functions have a type which include the params and return type

func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
	print("Result: \(mathFunction(a, b))")
}


// Nested functions

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
	func stepForward(input: Int) -> Int { return input + 1 }
	func stepBackward(input: Int) -> Int { return input - 1 }
	return backwards ? stepBackward : stepForward
}



// MARK: Closures
// -----------------------------------------------------------------------------------------------------




