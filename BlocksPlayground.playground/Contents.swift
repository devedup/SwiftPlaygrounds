// Playground - noun: a place where people can play

import UIKit

/// CLOSURES ARE:

// 1. “Global functions are closures that have a name and do not capture any values.”

// 2. “Nested functions are closures that have a name and can capture values from their enclosing function”

// 3. “Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.”


// WE CAN OPTIMIZE SYNTAX USING:

//  1 “Inferring parameter and return value types from context
//  2 Implicit returns from single-expression closures
//  3 Shorthand argument names
//  4 Trailing closure syntax”

// Excerpt From: Apple Inc. “The Swift Programming Language.” iBooks. https://itun.es/gb/jEUH0.l

func doubleParamFuncWithReturn(param: Int, param2: String) -> String {
    println("Im running doubleParamFuncWithReturn")
    return "from double"
}


// Function that accepts it

func accepter(something: Int, other: (param: Int, param2: String) -> String) {
    var result = other(param: 1, param2: "hello")
}

func accepterWithMiddleClosure(something: Int, closure: (param: Int, param2: String) -> String, otherParam: String) {
    var result = closure(param: 2, param2: "3")
}


// I can just pass in the function name like so:

accepter(1, doubleParamFuncWithReturn)


// Full syntax would be - (doesn't let me add the parameter as it's at the end

accepter(2, { (param: Int, param2: String) -> String in
    return "from the closure"
})

// If I just autocomplete, we're inferring...
// Because the compiler knows what accepter function other: param types are,
// we don't have to write Int, String

accepter(2, { (param, param2) -> String in
    return "from the closure"
})

// We don't even have to write the return type, as this in inferred too

accepter(2, { (param, param2) in
    return "from the closure"
})


// you can also get rid of the parentheses...

accepter(2, { param, param2 in
    return "from the closure"
})


// if you have 1 expression in the closure, you can ommit the return keyword

accepter(2, { param, param2 in
    "from the closure"
})


// however, if you do a few expressions... it is needed...

accepter(2, { param, param2 in
    println("doing something else")
    return "from the closure"
})


// You can also get rid of argument names and the in keyword if you require

// This worked in a earlier version of swift

//accepter(2, {
//    "from the closure"
//})






// Trailing closure:

accepter(2) { (param, param2) -> String in return "asdf" }

// Remove the params

accepter(2) { (param, param2) in return "dave" }


// Middle closure

accepterWithMiddleClosure(1, { (param, param2) -> String in
    return "nothing"
    }, "string")


// Try a typealias

typealias typed = (param: Int, param2: String) -> String

func withTypeAlias(something: Int, closure: typed) {
    closure(param: 2, param2: "3")
}



