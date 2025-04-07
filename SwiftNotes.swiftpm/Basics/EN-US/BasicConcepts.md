## 💡 Understanding the Binary System

Computers operate using the **binary system**. One of the main reasons is **electronic simplicity**: digital circuits only need to detect two states:

- **Electrical voltage active** (on) → represented by `1`  
- **Electrical voltage inactive** (off) → represented by `0`

Because of this, all data — text, images, sounds, and instructions — is stored and processed as sequences of `0`s and `1`s.

---

## 🔢 Comparing Number Bases: Decimal vs. Binary

The **decimal system (base 10)**, which we use naturally in everyday life, uses **10 digits (0 to 9)**. The position of each digit defines its value based on powers of 10:

```
Position 0: 10^0 = 1  
Position 1: 10^1 = 10  
Position 2: 10^2 = 100  
Position 3: 10^3 = 1000  
```

In the **binary system (base 2)**, the principle is the same, but it only uses two digits: `0` and `1`, and powers of 2:

```
Position 0: 2^0 = 1  
Position 1: 2^1 = 2  
Position 2: 2^2 = 4  
Position 3: 2^3 = 8  
```

---

## 🧮 Converting Binary to Decimal

To convert a binary number to decimal, multiply each digit by the corresponding power of 2 based on its position, then sum the results.

**Example:**

Convert binary number `10010` to decimal:

```
1 × 2^4 = 16  
0 × 2^3 = 0  
0 × 2^2 = 0  
1 × 2^1 = 2  
0 × 2^0 = 0  
Sum: 16 + 0 + 0 + 2 + 0 = 18
```

So, `10010 (binary)` = `18 (decimal)`.

---

## 🔁 Converting Decimal to Binary

To convert a decimal number to binary, divide the number repeatedly by 2 and store the **remainder** of each division. The binary result is the sequence of remainders read **from bottom to top**.

**Example:**

Convert decimal number `450` to binary:

```
450 ÷ 2 = 225 → remainder: 0  
225 ÷ 2 = 112 → remainder: 1  
112 ÷ 2 = 56  → remainder: 0  
56 ÷ 2  = 28  → remainder: 0  
28 ÷ 2  = 14  → remainder: 0  
14 ÷ 2  = 7   → remainder: 0  
7 ÷ 2   = 3   → remainder: 1  
3 ÷ 2   = 1   → remainder: 1  
1 ÷ 2   = 0   → remainder: 1  
```

Now, reading the remainders in reverse order:

```
Binary: 111000010
```

So, `450 (decimal)` = `111000010 (binary)`.

---

## 🧱 What is a Bit?

A **bit** (short for *binary digit*) is the smallest unit of information in a computer: either `0` or `1`. It directly represents the physical state of an electrical signal — off or on.

Processor architectures are often described in terms of bits — for example, **32-bit** or **64-bit** — which indicates how many bits each **register** can hold and process at once.

### Maximum Value Representation

A **32-bit processor** can represent binary numbers with up to 32 digits. The largest unsigned value it can represent is:

```
Binary: 11111111111111111111111111111111  
Decimal: 4,294,967,295  (which is 2^32 - 1)
```

---
