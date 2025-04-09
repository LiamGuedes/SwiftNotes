## 🧾 Compilers, Interpreters, and Virtual Machines

When you write code in a language like Swift, Python, or Java, that code isn’t directly understood by the computer. It must be **translated into machine language** — a binary format the CPU can execute.

That translation is handled by two key players: **compilers** and **interpreters**. Sometimes, a third component enters the stage — the **virtual machine** — which helps bridge the gap between your code and the actual hardware.

---

### 🏗️ What is a compiler?

A **compiler** is a program that takes your entire source code and **translates it into machine code** or an intermediate form **before** the program runs.

This translation process involves several steps:

1. **Lexical analysis** – tokenizes your code (keywords, variables, symbols)  
2. **Syntax analysis** – checks if the code structure follows grammar rules  
3. **Semantic analysis** – validates type rules, scopes, etc.  
4. **Code generation** – converts code into a low-level or binary format  
5. **Optimization** – improves performance without changing behavior

#### Examples of compiled languages:
- Swift  
- C / C++  
- Rust  
- Go

These languages typically **generate executable files** that can run directly on the system without needing the source code.

---

### ▶️ What is an interpreter?

An **interpreter** runs code **line by line**, translating and executing it at runtime, without creating a separate executable file.

How it works:

- Reads a line of code  
- Converts it into machine instructions  
- Executes it immediately  
- Repeats for the next line

#### Examples of interpreted languages:
- Python  
- JavaScript  
- Ruby  
- Bash

These languages are common in scripting, automation, and rapid prototyping.

---

### 🔁 Compiled + Interpreted: the hybrid model

Many modern languages blend both strategies to take advantage of the best of each.

- **Java** compiles to **bytecode**, which is interpreted (or JIT-compiled) by the **JVM**  
- **Swift** compiles to native code, but supports interactive interpretation in playgrounds  
- **JavaScript** is interpreted, but engines like **V8** apply Just-In-Time (JIT) compilation for performance

---

### ⚙️ What is a virtual machine?

A **virtual machine (VM)** is a program that simulates a computer environment. It interprets intermediate code (like bytecode) and translates it into instructions for the host system.

This allows the same code to run across different platforms — as long as the target machine has the correct VM.

#### Examples of virtual machines:
- **JVM (Java Virtual Machine)**  
- **.NET CLR**  
- **WebAssembly Runtime**  
- **Swift Runtime**

---
