## 🧱 Tipos de Dados e Armazenamento na Memória

Ao declarar uma variável em qualquer linguagem de programação, o que você está realmente fazendo é **reservar espaço na memória** para guardar um valor — e esse espaço precisa ter tamanho, formato e regras bem definidas.

Por isso, **tipos de dados** são fundamentais. Eles determinam **como o valor será armazenado** em memória, **quantos bits serão usados**, e **quais operações são permitidas** sobre ele.

---

### 🧠 Por que os tipos de dados importam?

Em linguagens como Swift, C, Rust e outras de tipagem forte, declarar o tipo de uma variável é obrigatório ou altamente recomendado. Isso garante:

- **Segurança**: evita usar dados de forma errada (ex.: somar um número com um texto).
- **Eficiência**: o compilador sabe exatamente quanto espaço alocar.
- **Performance**: tipos bem definidos permitem otimizações durante a compilação.

Além disso, o tipo de dado influencia no **intervalo de valores** que podem ser representados, no **consumo de memória** e até na **precisão dos cálculos**.

---

### 🔢 Tipos numéricos inteiros

Os inteiros são números sem parte decimal (ex.: -10, 0, 42). Eles podem ser:

- **Com sinal (`signed`)**: permitem valores negativos e positivos  
- **Sem sinal (`unsigned`)**: armazenam apenas valores positivos (começando do zero)

#### Exemplos em Swift:

| Tipo     | Bits | Intervalo                     |
|----------|------|-------------------------------|
| `Int8`   | 8    | -128 a 127                    |
| `UInt8`  | 8    | 0 a 255                       |
| `Int16`  | 16   | -32.768 a 32.767              |
| `UInt16` | 16   | 0 a 65.535                    |
| `Int32`  | 32   | -2.147.483.648 a 2.147.483.647|
| `UInt32` | 32   | 0 a 4.294.967.295             |
| `Int64`  | 64   | Intervalo muito maior         |

💡 O intervalo com sinal é assimétrico porque um bit é reservado para indicar o **sinal** (`0` para positivo, `1` para negativo).

---

### 🎯 Representação em binário (inteiros com sinal)

Linguagens modernas usam a técnica chamada **complemento de dois** (*two’s complement*) para representar números negativos. Esse método permite que operações como soma e subtração funcionem corretamente, mesmo com sinais diferentes, sem lógica especial para "separar positivos de negativos".

Exemplo simplificado com 4 bits:
- `0101` = 5  
- `1011` = -5 (em complemento de dois)

---

### 📏 Tipos numéricos com ponto flutuante

Usados para representar números **com casas decimais**, os tipos de ponto flutuante oferecem mais flexibilidade, mas menos precisão em alguns casos (por conta de arredondamentos e limites binários).

#### Tipos comuns:

| Tipo     | Bits | Precisão aproximada         |
|----------|------|-----------------------------|
| `Float`  | 32   | ~7 casas decimais           |
| `Double` | 64   | ~15 casas decimais          |

Esses tipos seguem o padrão **IEEE 754**, que divide os bits em três partes:
- **Sinal (1 bit)**
- **Expoente (vários bits)**
- **Mantissa** ou fração (representa a parte significativa)

🔍 Por serem imprecisos em certos casos, floats devem ser usados com cuidado em comparações e cálculos sensíveis.

---

### 🧠 Outros tipos primitivos

Além dos numéricos, temos outros tipos fundamentais:

#### `Bool` (Booleano)
- Representa verdadeiro (`true`) ou falso (`false`)
- Pode ser armazenado com **1 bit**, mas em muitas arquiteturas ocupa 1 byte por alinhamento de memória

#### `Character` e `String`
- **Character** representa um único símbolo (como `A`, `é`, `🐱`)  
- **String** é uma sequência de caracteres e pode ocupar **múltiplos bytes** (por conta do uso de Unicode/UTF-8)

---

### 💾 Como os dados são armazenados na memória?

Quando declaramos uma variável, o sistema reserva um espaço contíguo na **RAM** com o tamanho apropriado para o tipo definido. A variável passa a ter um **endereço de memória**, e seu valor pode ser lido, modificado ou liberado pelo sistema.

Exemplo prático:

```swift
let idade: UInt8 = 25
```

Nesse caso, o compilador reserva 8 bits (1 byte) na memória e armazena o número 25 em binário: `00011001`.

---

### 🔄 Conversão entre tipos (Type Casting)

Muitas linguagens permitem **converter tipos de forma explícita** (e às vezes implícita). Porém, essas conversões podem gerar **perda de precisão** ou **estouro de valor**, então devem ser feitas com cuidado.

Exemplo:

```swift
let valor: UInt8 = 200
let resultado = Int8(valor) // Resultado inválido: overflow
```

Como `Int8` só vai até 127, o valor `200` “estoura” o limite — isso pode gerar um número negativo ou uma falha de execução, dependendo da linguagem e do ambiente.

---
