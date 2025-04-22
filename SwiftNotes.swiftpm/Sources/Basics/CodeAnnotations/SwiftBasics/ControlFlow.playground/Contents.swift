// MARK: Boolean Operator
/*  Boolean operators in swift is used to compare values. It can be equality (==), different (!=), greater than (>) and less than (<)
*/

let jamesAge: Int = 25
let maryAge: Int = 23

print(jamesAge == maryAge)
print(jamesAge != maryAge)
print(jamesAge > maryAge)
print(jamesAge < maryAge)
print(jamesAge >= maryAge)

// MARK: Boolean Logic
/*  Boolean Logic */
print(jamesAge > 20 && maryAge > 20) // AND
print(jamesAge < 25 || maryAge < 25) // OR
print(jamesAge == maryAge) // EQUAL
print((jamesAge > 20 && maryAge > 20) || (jamesAge < 25 && maryAge < 25)) // AND OR AND

// You can change true to false, using toggle method. But your variable, must be a VAR, if it be let, it doesn't work.
var doorIsOpen = false
doorIsOpen.toggle()

// Control Flow - IF
if doorIsOpen {
    print("Door is open. Please close the door!")
    doorIsOpen.toggle()
}

if !doorIsOpen && jamesAge > 20 {
    print("You can enter in the PUB. Open the door")
    doorIsOpen.toggle()
}

/*  Note, when you have two or more || or &&, the first statement always be run before, and if it become false,
    the second statement will never be running. */

if doorIsOpen && jamesAge < 30 {
    print("Turn around, the VIP session is not avalable for you")
} else if !doorIsOpen && jamesAge > 20 {
    print("Go on. The PUB is open, but not VIP session")
}

// Ternary: (<CONDITION>) ? <TRUE VALUE> : <FALSE VALUE>
// Note: You can run a closure or function in the ternary operator, not only value.
let coupleOver18CanEnterThePub = jamesAge > 18 && maryAge > 18 ? "Can enter" : "Cann't enter"
let coupleOver18CanEnterTheVIP = jamesAge > 30 && maryAge > 30 ? { doorIsOpen = true } : {doorIsOpen = false}

// While Loop. This loop will run until a condition be satisfied. with repeat you condition will be read after the code, without repeat your condition will be read before.
var gas = 100

repeat {
    print("Keep Running your car. Your gas is \(gas)LT")
    gas -= 25
} while gas > 0

print("Your gas is empty. Please recharger it")

while gas <= 100 {
    print("Recharging your gas \(gas)LT")
    gas += 25
}

// Note: Variables is scope based, of you declare it inside a loop or if for example, this variable not exist outside, and if you try to put it in your code, it will generate a error.

// When you'r working with ranges, you can add it into a variable
let diceSides = 1...6
while Int.random(in: diceSides) != 6 {
    print("It's not a critical hit")
}

// For loop, will loop for a determined range. Different form while, this will increase a value time by time.
let halfDayCounter = 1...12
for hour in halfDayCounter {
    print("Now is current \(hour):00")
}

// In the for loop, the variable is scoped and begins with let as default, but you can make it a var, like the example below.
for var number in 1...6 {
    number += 1
}

for number in 1...6 {
    print("This is a number \(number)")
}

// Note: the continue will go to the next interaction and break will stop the loop

for number in 1...10 {
    if number % 2 == 0 {
        print("Even number \(number)")
        continue
    }
    
    if number == 7 {
        print("Joker Number")
        break
    }
    
    print("Odd number \(number)")
}

for row in  1...8 {
    var line = ""
    
    for column in 1...8 {
        if column % 2 == 0 {
            line += "• "
            continue
        }
        line += "◯ "
    }
    
    print(line)
}

for rowX in  1...8 {
    var line = ""
    
    for columnY in 1...8 {
        if rowX == 1 || rowX == 8 {
            line += "• "
            continue
        }
        
        if columnY == 1 || columnY == 8 {
            line += "• "
            continue
        }
        
        line += "◯ "
    }
    
    print(line)
}

// Switch is a control flow, that switch a value according the cases.
let isACountry: String = "Brazil"

switch isACountry {
case "Brazil":
    print("I love Brazil")
case "France":
    print("I love France")
default:
    print("I dont't know the name of this country")
}

let dayHour = 21
switch dayHour {
case 8...12:
    print("Morning")
case 13...18:
    print("Afternoon")
case 19...23:
    print("Night")
default:
    print("Midnight")
}

let diceNumber = 4
switch diceNumber {
case let side where side % 2 == 0:
    print("Even number")
default:
    print("Odd number")
}
