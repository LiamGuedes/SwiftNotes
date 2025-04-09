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

