// MARK: - Basic Operations

// Arithmetic operators in Swift:
// (-) Subtraction
// (+) Addition
// (/) Division
// (*) Multiplication

/* Proper spacing improves readability:
    X+ Y  -> Error
    X +Y  -> Error
    X + Y -> Correct
    X+Y   -> Also correct, but less readable
*/

// Monthly Budget Calculation (Add & Subtract)
let income: Double = 7000
let rentBill: Double = 3000
let basicsBill: Double = 1000
let educationBill: Double = 1000
let transportationBill: Double = 500
let entertainmentBill: Double = 200
let otherBill: Double = 200
let expenses: Double = rentBill + basicsBill + educationBill + transportationBill + entertainmentBill + otherBill

let monthlyBudget: Double = income - expenses
print(monthlyBudget)

// BMI Calculation (Divide & Multiply)
let weight: Double = 71
let height: Double = 1.70
let imc: Double = weight / (height * height)
print(imc)

// Extra Days in the Month (Remainder)
// The % operator returns the remainder of an integer division.
let daysInMonth: Int = 30
let weekDays: Int = 7
let extraDays: Int = daysInMonth % weekDays
print(extraDays)

// Grid Position in a 7-Row Layout (Modulo and Division)
let index: Int = 46
let rows: Int = 7
let YPosition = index % rows
let XPosition = index / rows
print("(Line:\(XPosition), Row:\(YPosition))")

// << SHIFT LEFT and >> SHIFT RIGHT will be explained later with registers and demangle

// Circumference Calculation
// Formula: circumference = 2 * π * radius
let pi: Double = 3.14
var radius: Double = 10
let circunference: Double = 2 * pi * radius
print(circunference)

// Increment and Decrement Operations
var counter: Int = 0
counter += 2
counter -= 1
counter *= 2
counter /= 2
print(counter)

// MARK: - Type Conversion and Compatibility
/*
 In Swift, you cannot directly assign or operate with values of different types without explicitly converting them.
 
 Example:
    let integerVar: Int = 12.3 + 10
 
 Why? Because 12.3 is a Double, and you're trying to assign the result to an Int.

 Correct approach with type conversion:
    let integerVar: Int = Int(12.3) + 10

 Error message:
    Cannot assign value of type 'Double' to type 'Int'
*/

/*
 Likewise, Swift does not allow arithmetic operations between mismatched types. But you can mix Int and Double in expressions like:
 
 Example:
    let result = 3.0 * 4

 In this case, Swift automatically promotes the Int (4) to a Double (4.0), and the result is a Double. However, problems occur when assigning a mixed-type result to a specific type like Int:
 
 Example:
    let result: Int = 3.0 * 4

 To fix this, convert the result explicitly:

 Example:
    let result: Int = Int(3.0 * 4)

 Error message:
    Cannot assign value of type 'Double' to type 'Int'
*/

let doubleValue: Double = 12.3
let intValue: Int = Int(doubleValue) + 10
print(intValue)

/*
 Swift supports type inference, meaning the compiler can automatically determine the type of a variable
 based on the value assigned to it. You don’t need to explicitly declare the type unless necessary.

 Example:
    let number = 42       // Inferred as Int
    let name = "Alice"    // Inferred as String
*/

let diceFaces = 6
print(diceFaces)

// MARK: - Strings
/*
 In Swift, a String is a collection of characters, each represented by a Unicode scalar value.
 When you create a String, Swift automatically builds a sequence of characters with their Unicode values.

 Example:
    let letter: Character = "A"
    let unicodeCode = letter.asciiValue  // Returns optional UInt8 representing the Unicode value (e.g., 65)
*/

let courseClass: Character = "A"
let courseNameUnicode: Int = Int(courseClass.asciiValue!)
var courseName: String =  "Math"

/*
 In Swift, you can concatenate strings using the `+` operator, similar to how numbers are added.

 Example:
    let fullName = "John" + " " + "Doe"

 However, you cannot directly concatenate a `Character` with a `String` using `+`, because they are different types.

 Example (invalid):
    let surname: Character = "D"
    let name = "John" + surname // Error

 Error:
    Cannot convert value of type 'Character' to expected argument type 'String'

 To include values (including characters, numbers, or variables) inside a string, you can use string interpolation with `\()`:
    
 Example:
    let name = "John"
    let grade: Character = "A"
    let message = "Student: \(name), Grade: \(grade)"

 You can also use multi-line strings with triple quotes (`"""`) for longer texts or descriptions.

 Important:
 The content of a multi-line string must start on a new line after the opening quotes, or Swift will throw this error:

 Error:
    Multi-line string literal content must begin on a new line
*/

let fullCourse: String = "Course: \(courseName), Class: \(courseClass), Class Code: \(courseNameUnicode)"
courseName += " Advanced"
courseName = courseName + " II"
print(courseName)

let courseDescription: String = """
                                Advanced Math II
                                This class has a objetive to teach, Linear Algebra and our systems.
                                Class: \(courseClass) Code: \(courseNameUnicode)
                                """
print(courseDescription)

// MARK: - Tuples and Typealias
/*
 Tuples can aggregate homogenous and heterogeneus values into the variable, where you only need to put the types
 separated by comma. Ex (Double, Int) or (String, String). And to not be confused, you can add a name to made your
 tuple more readable. Ex: (x: Int, y: Int, z: Int). You can also, add without a implicit type, and swift will infer
 it automatically.

 Example of unnamed tuples:
    let result: (Double, Int) = (3.5, 7)
 
 To make tuples more readable, you can give names to each element:
    let point: (x: Int, y: Int, z: Int) = (1, 2, 3)

 You can also omit the type declaration, and Swift will infer it automatically:
    let coordinates = (x: 10, y: 20)
*/

let coordinates: (Int, Int) = (1, 2)
let namedCoordinates: (x: Int, y: Int, z: Int) = (1, 2, 5)
let autoTypeCoordinates = (x: 10, y: 20, z: 30)

print(namedCoordinates.x)
print(coordinates.0)

/*
 When unpacking (destructuring) a tuple into individual variables,
 you must match the exact number of elements in the tuple.

 Example:
    let point = (x: 1, y: 2, z: 3)
    let (a, b, c) = point

 If the number of variables does not match the number of tuple elements, Swift throws an error.
 
 Example:
    let point = (x: 1, y: 2, z: 3)
    let (a, b) = point

 Error:
    '(x: Int, y: Int, z: Int)' is not convertible to '(Int, Int)'

 To avoid this, you can use an underscore (_) to ignore specific elements:

 Example:
    let (x, y, _) = point // Ignores the third value
*/

let (xAxis, yAxis, _) = namedCoordinates
print(yAxis)

/*
 In Swift, you can use `typealias` to create a custom name for an existing type.

 This is especially useful when dealing with complex or repetitive types,
 making your code more readable and expressive.

 Example:
    typealias Point3D = (x: Int, y: Int, z: Int)
    let position: Point3D = (10, 20, 30)

 You’re not creating a new type — just a shortcut (alias) to refer to an existing one.
*/

typealias Point3D = (x: Int, y: Int, z: Int)
let point: Point3D = (10, 22, 45)

let test = (t: 10, y: 22, z: 45)
