## 1. 🧠 Binary System and Data Representation

Before diving into programming, it’s important to understand how a computer *sees* information. Even the most modern systems rely on a very basic principle: they understand only two states — **on** and **off**. Everything you see on a screen is ultimately the result of millions (or billions) of these states organized in very clever ways.

That’s where the **binary system** comes in.

---

### 🔢 What is the binary system?

The binary system is a **base-2** number system. Instead of using ten digits like the decimal system (0 to 9), it uses only two symbols: `0` and `1`.

These two values are directly tied to the physical states of digital circuits:

- `1` → **Electrical signal is active** (on ⚡)  
- `0` → **Electrical signal is inactive** (off 💡)

These values are called **bits** (short for *binary digits*), and they represent the smallest unit of information in computing.

---

### 🧱 What is a bit, and how is it grouped?

A **bit** stores a single binary value: `0` or `1`. That’s it.

Now, with just one bit, you can only store two possibilities. To represent more complex data like letters, larger numbers, or even images, we combine multiple bits.

The most common grouping is the **byte**, which consists of **8 bits**.

With 8 bits, we can represent **256 different combinations** (from 0 to 255), which is enough to cover the alphabet, numbers, punctuation marks, and basic symbols.

📦 From the byte, we scale up like this:

- 1 **kilobyte (KB)** = 1024 bytes  
- 1 **megabyte (MB)** = 1024 KB  
- 1 **gigabyte (GB)** = 1024 MB  
- and so on...

---

### 🧮 How are numbers represented?

Just like in the decimal system, where each digit has a value based on powers of 10 (e.g., 1000, 100, 10, 1), the binary system uses powers of 2.

Let’s walk through an example converting a binary number to decimal.

#### Example: `10010` (binary)

We read it from right to left, starting at position 0:

```
Position 4 → 1 × 2⁴ = 16  
Position 3 → 0 × 2³ = 0  
Position 2 → 0 × 2² = 0  
Position 1 → 1 × 2¹ = 2  
Position 0 → 0 × 2⁰ = 0  
Total = 16 + 0 + 0 + 2 + 0 = 18
```

✅ Result: `10010` in binary equals `18` in decimal.

---

### 🔁 How to convert decimal to binary?

The reverse process is simple. You repeatedly divide the decimal number by 2 and keep track of the **remainder** each time. Then, you read the remainders **from bottom to top**.

#### Example: `450` (decimal)

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

Now, read the remainders in reverse:

📘 Final result: `111000010`

---

### 🔤 Representing text: ASCII and Unicode

Computers also need to represent **text** — not just numbers. That includes letters, symbols, punctuation, and even emojis 😄

To do this, we map each character to a number and store that number in binary.

#### ASCII (American Standard Code for Information Interchange)

ASCII is a character encoding standard that maps numbers to characters. For example:

- `A` → decimal `65` → binary `01000001`  
- `a` → decimal `97` → binary `01100001`

With 8 bits, you can represent 256 characters — enough for the English alphabet, numbers, punctuation, and some special symbols.

#### Unicode / UTF-8

**Unicode** was developed to support characters from all languages, as well as technical symbols, mathematical symbols, emojis, and more. The most widely used format is **UTF-8**, which is backward-compatible with ASCII and can represent over a million characters using up to 4 bytes per symbol.

---

### 🔬 Numeric types: Integers vs. Floating-point

When we work with numbers in programming, we’re using specific binary formats behind the scenes.

- **Integer types** like `Int`, `UInt8`, or `Int32` are stored directly in binary. A `UInt8`, for example, uses 8 bits, meaning it can represent values from `0` to `255`.

- **Floating-point types** like `Float` and `Double` store decimal numbers using the IEEE 754 standard. This format splits the bits into three parts: the sign, the exponent, and the fraction (also called the mantissa).

Floating-point numbers allow us to represent very large or very small values with decimal precision, but they come with limitations in terms of rounding and accuracy — something to keep in mind when precision matters.

---
