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

