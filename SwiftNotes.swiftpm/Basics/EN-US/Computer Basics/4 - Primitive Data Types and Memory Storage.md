## 🧱 Data Types and Memory Storage

When you declare a variable in any programming language, you're actually **reserving space in memory** to hold a value — and that space needs to have a defined size, format, and behavior.

That’s where **data types** come in. They define **how a value is stored**, **how many bits are used**, and **what kind of operations** can be performed with it.

---

### 🧠 Why do data types matter?

In languages like Swift, C, and Rust (which are statically typed), declaring the type of a variable is either required or strongly encouraged. This brings several benefits:

- **Safety**: Prevents using data in the wrong way (e.g., adding a number to a string).  
- **Efficiency**: The compiler knows exactly how much memory to allocate.  
- **Performance**: Well-defined types allow the compiler to optimize code at compile time.

Additionally, the type of data determines the **value range**, **memory usage**, and **accuracy of calculations**.

---

### 🔢 Integer types

Integers are whole numbers (e.g., -10, 0, 42). They can be:

- **Signed**: allow both positive and negative values  
- **Unsigned**: only allow positive values (starting from zero)

#### Examples in Swift:

| Type     | Bits | Range                        |
|----------|------|------------------------------|
| `Int8`   | 8    | -128 to 127                  |
| `UInt8`  | 8    | 0 to 255                     |
| `Int16`  | 16   | -32,768 to 32,767            |
| `UInt16` | 16   | 0 to 65,535                  |
| `Int32`  | 32   | -2,147,483,648 to 2,147,483,647 |
| `UInt32` | 32   | 0 to 4,294,967,295           |
| `Int64`  | 64   | Much larger range            |

💡 In signed integers, one bit is reserved to represent the **sign** (`0` for positive, `1` for negative), which explains the asymmetric range.

---

### 🎯 Binary representation (signed integers)

Most modern languages use a technique called **two’s complement** to represent negative integers. This approach allows arithmetic operations like addition and subtraction to work consistently — even when mixing positive and negative values.

Simplified example with 4 bits:
- `0101` = 5  
- `1011` = -5 (in two’s complement)

---

### 📏 Floating-point types

Used to represent numbers **with decimal places**, floating-point types offer greater flexibility but come with limitations in terms of precision and rounding errors.

#### Common types:

| Type     | Bits | Approx. Precision     |
|----------|------|------------------------|
| `Float`  | 32   | ~7 decimal digits      |
| `Double` | 64   | ~15 decimal digits     |

Floating-point numbers follow the **IEEE 754** standard, which divides the bits into:

- **Sign** (1 bit)  
- **Exponent** (several bits)  
- **Mantissa** or fraction (significant part)

🔍 Because of rounding and binary limitations, avoid using floats for exact comparisons or financial calculations.

---

### 🧠 Other primitive types

Beyond numbers, we have other essential types:

#### `Bool` (Boolean)
- Represents either `true` or `false`  
- Can be stored using **1 bit**, although many systems allocate a full byte for alignment purposes

#### `Character` and `String`
- A **Character** represents a single symbol (e.g., `A`, `é`, `🐱`)  
- A **String** is a sequence of characters, which can occupy **multiple bytes**, especially in Unicode/UTF-8 encodings

---

### 💾 How are values stored in memory?

When you declare a variable, the system reserves a block of **RAM** with the appropriate size for its type. The variable is assigned a **memory address**, and its value can be accessed or changed through that location.

Practical example:

```swift
let age: UInt8 = 25
```

Here, the compiler reserves 8 bits (1 byte) and stores the number 25 in binary: `00011001`.

---

### 🔄 Type conversion (Type Casting)

Most languages allow you to **convert types explicitly** (and sometimes implicitly). However, conversions may lead to **loss of precision** or **overflow**, so they should be handled carefully.

Example:

```swift
let value: UInt8 = 200
let result = Int8(value) // Invalid result: overflow
```

Since `Int8` only goes up to 127, the value `200` exceeds the limit and wraps around or triggers an error, depending on how the language handles it.

---
