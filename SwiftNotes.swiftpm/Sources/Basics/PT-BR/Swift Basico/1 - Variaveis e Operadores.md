## 📘 Operações Básicas em Swift

Swift é uma linguagem moderna, robusta e segura, e assim como qualquer outra linguagem de programacao, este tambem necessita lidar com o basico: **somar, subtrair, multiplicar e dividir**. Neste capítulo, vamos entender como funcionam as operações matemáticas fundamentais e como aplicá-las no dia a dia com Swift.

---

### ➕➖✖️➗ Operadores Aritméticos Básicos

Swift suporta os operadores matemáticos padrão:

| Operador | Descrição       | Exemplo       |
|----------|------------------|---------------|
| `+`      | Adição           | `2 + 3` → `5` |
| `-`      | Subtração        | `5 - 2` → `3` |
| `*`      | Multiplicação    | `4 * 2` → `8` |
| `/`      | Divisão          | `10 / 2` → `5` |
| `%`      | Resto da divisão | `7 % 3` → `1` |

---

### ⚠️ Espaçamento entre operadores

Atenção: o Swift exige que operadores sejam usados de forma **legível e coerente**. Por isso, os seguintes exemplos causam erro:

```swift
// ❌ Gera erro:
let x = 2+ y    // ERRO
let x= 2 +y     // ERRO
```

Mas estes estão corretos:

```swift
// ✅ Correto:
let x = 2 + y
let x = 2+y
```

---

### 💵 Exemplo: Controle de Orçamento Mensal

```swift
let income: Double = 7000
let rentBill: Double = 3000
let basicsBill: Double = 1000
let educationBill: Double = 1000
let transportationBill: Double = 500
let entertainmentBill: Double = 200
let otherBill: Double = 200

let expenses = rentBill + basicsBill + educationBill + transportationBill + entertainmentBill + otherBill
let monthlyBudget = income - expenses
print("Saldo no fim do mês: R$\(monthlyBudget)")
```

---

### ⚖️ Exemplo: Cálculo de IMC (Índice de Massa Corporal)

```swift
let weight: Double = 71
let height: Double = 1.70

let imc = weight / (height * height)
print("Seu IMC é: \(imc)")
```

---

### 📆 Exemplo: Dias extras no mês (Resto da divisão)

```swift
let daysInMonth = 30
let weekDays = 7

let extraDays = daysInMonth % weekDays
print("Dias que 'sobram' no mês: \(extraDays)")
```

---

### 🖼️ Exemplo: Galeria de Fotos (posição em grade)

Imagine uma galeria de fotos com 7 linhas por coluna. Onde a foto de índice 46 está localizada?

```swift
let index = 46
let rows = 7

let YPosition = index % rows
let XPosition = index / rows

print("Posição: Linha \(XPosition), Coluna \(YPosition)")
```

---

### 🌀 Constantes vs Variáveis

Em Swift, você pode usar:

- `let` para **constantes** (valores imutáveis)
- `var` para **variáveis** (valores mutáveis)

```swift
let pi: Double = 3.14
var radius: Double = 10

let circunference = 2 * pi * radius
print("Circunferência: \(circunference)")
```

---

### 🔁 Incremento e Decremento com operadores compostos

Swift permite atualizar variáveis usando **operadores de atribuição combinados**:

```swift
var counter: Int = 0

counter += 2  // Soma 2
counter -= 1  // Subtrai 1
counter *= 2  // Multiplica por 2
counter /= 2  // Divide por 2

print("Valor final do contador: \(counter)")
```

---

### 🚧 Shift Left e Right

Os operadores `<<` (Shift Left) e `>>` (Shift Right) são usados para manipulação direta de bits. Falaremos sobre eles mais adiante, quando entrarmos em **registros, binários e performance de baixo nível**.

---
