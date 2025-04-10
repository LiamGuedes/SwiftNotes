/* Basic Operations
 (-): Subtract
 (+): Add
 (/): Divide
 (*): Multiply
 */

/*
 X+ Y: GENERATE ERROR
 X +Y: GENERATE ERROR
 X + Y: CORRECT
 X+Y: CORRECT
 */

// Month Budget (Subtract and Add Operations)
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

// IMC Calc (Divide and Multiply Operations)
let weight: Double = 71
let height: Double = 1.70
let imc: Double = weight / (height * height)
print(imc)

// Month Extra Days (Remainder)
let daysInMonth: Int = 30
let weekDays: Int = 7
let extraDays: Int = daysInMonth % weekDays
print(extraDays)

// Seven Row Photo Gallery Position (Remainder) for Float (Truncating Remainder)
let index: Int = 46
let rows: Int = 7
let YPosition = index % rows
let XPosition = index / rows
print("(Line:\(XPosition), Row:\(YPosition))")

// << SHIFT LEFT and >> SHIFT RIGHT will be explained later with registers and demangle

// Circunference Calculus
// Constants cannot be changed, the value remains the same since your init
let pi: Double = 3.14

// Variables can be changed after
var radius: Double = 10
let circunference: Double = 2 * pi * radius
print(circunference)

// Increment and Decrement
var counter: Int = 0
counter += 2
counter -= 1
counter *= 2
counter /= 2
print(counter)

/* In Swift, you can't assign directly values of differente types (Ex: integerVar: Int = 12.3 + 10), it's cause error. But if you want to convert the value, you can convert it explicity (Ex: integerVar: Int = Int(12.3) + 10)

 - Error Performed:
    Cannot assign value of type 'Double' to type 'Int'
 */

/* In the same way, you can't make operations with a different values like Int + Double, all types, need to be the same to perform without errors

 - Error Performed:
    Binary operator '*' cannot be applied to operands of type 'Double' and 'Int'
 */

let doubleValue: Double = 12.3
let intValue: Int = Int(doubleValue) + 10
print(intValue)

// Swift also have, the Type inference, that allows the language infer based in the value, without the developer needs to infer manually.

let diceFaces = 6
print(diceFaces)

// String is a collection of characters, called "character set". As well, each character have a code in unicode, and when you declare a String, Swift automatically perform a character set creation.

let courseClass: Character = "A"
let courseNameUnicode: Int = Int(courseClass.asciiValue!)
var courseName: String =  "Math"

/* Concatenation of String as the same as number, where you can perform a sum of Strings. But you can't perform a sum of String with character. It will show the following error:
 - Error:
    Cannot convert value of type 'Character' to expected argument type 'String'
 
 And we can have another ways to make it better and more readable, with interpolation \(). As well, we can do it with multi lines too, for long descriptions or texts, and the interpolation works fine with it. Take notes, that you need to jump a line when you are working with mult line strings, otherwise the following error will be show:
 - Error
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



