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
