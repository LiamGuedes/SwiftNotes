## 🔢 Number Systems: Binary, Octal, Decimal, and Hexadecimal

In programming — and in computing in general — numbers aren't limited to the base-10 format we use in everyday life. Computers work with different **number systems**, each with specific characteristics and use cases.

Understanding these systems is essential when dealing with **memory addresses**, **bit manipulation**, **color encoding**, and more.

---

### 🔟 Decimal System (Base 10)

This is the number system we use naturally. It uses **ten digits**, from `0` to `9`.

Each position represents a **power of 10**, from right to left:

```
Number:   1   2   3  
Powers: 10² 10¹ 10⁰  
Math:   1×100 + 2×10 + 3×1 = 123
```

It’s intuitive for humans, but **not ideal for computers**, which operate using simpler binary states.

---

### ⚙️ Binary System (Base 2)

As covered previously, the binary system is the **native language of computers**. It uses only two digits: `0` and `1`. Each position is a **power of 2**.

```
Binary: 1   0   0   1   0  
Powers: 2⁴  2³  2²  2¹  2⁰  
Math:   1×16 + 0×8 + 0×4 + 1×2 + 0×1 = 18
```

Binary is ideal for representing “on” and “off” states in electronic circuits.

---

### 🧮 Octal System (Base 8)

The octal system uses digits from `0` to `7`, and each position is a power of 8. While less common today, octal was once widely used in low-level programming and in Unix file permissions.

**Example: Decimal → Octal**

```
Decimal: 83  
83 ÷ 8 = 10 → remainder: 3  
10 ÷ 8 = 1  → remainder: 2  
1 ÷ 8  = 0  → remainder: 1  
Result: 123 (octal)
```

In many programming languages, octal values are prefixed with `0`, like `0123`.

---

### 🧪 Hexadecimal System (Base 16)

The hexadecimal system (or simply “hex”) is very common in computing. It’s more **compact than binary** and easier to read.

It uses 16 symbols:

```
0–9 and A–F  
(A = 10, B = 11, ..., F = 15)
```

Each digit represents a power of 16:

```
Hex: 2 A  
Math: 2×16¹ + A×16⁰ = 32 + 10 = 42 (decimal)
```

Hex is widely used for:

- Memory addresses (e.g., `0x1A3F`)  
- Color codes (e.g., `#FF5733` → RGB values)  
- Byte-level operations and debugging

---

### 🔁 Relationship Between Systems

Some systems have a **direct conversion path**, especially binary, octal, and hexadecimal:

- One **octal digit** equals **3 binary bits**
- One **hex digit** equals **4 binary bits**

#### Example: Binary → Hexadecimal

```
Binary: 11010111  
Group into 4-bit chunks: 1101 0111  
1101 = D, 0111 = 7  
Result: 0xD7
```

This direct grouping makes hexadecimal a useful shorthand for reading and editing binary values.

---

### 🧩 When and Why to Use Each

| System      | Base | Common Usage                          |
|-------------|------|----------------------------------------|
| Decimal     | 10   | General human-readable input/output    |
| Binary      | 2    | Core of all machine-level computation  |
| Octal       | 8    | Unix file permissions, legacy systems  |
| Hexadecimal | 16   | Memory addresses, color codes, bit flags |

---
