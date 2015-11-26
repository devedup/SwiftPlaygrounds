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
let increment1 = add++
let increment = ++add
let decrement = --add
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
func workOnString(var string: String) {
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
















