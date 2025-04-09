## 🧠 Representação de Dados

Antes de começar a programar, vale muito entender como o computador *enxerga* as coisas. Afinal, por mais moderno que o sistema pareça, no fundo ele só entende dois estados: **ligado** e **desligado**. Tudo — absolutamente tudo — que vemos em uma tela é resultado de milhões (ou bilhões) desses estados sendo organizados de forma muito inteligente.

E é aí que entra o **sistema binário**.

---

### 🔢 O que é o sistema binário?

O sistema binário é um sistema de numeração de **base 2**. Ou seja, ao invés de usar os 10 dígitos do sistema decimal (de 0 a 9), ele usa apenas dois símbolos: `0` e `1`.

Esses dois valores são suficientes para representar **os dois estados físicos possíveis em um circuito digital**:

- `1` → quando há **tensão elétrica ativa** (sinal ligado ⚡)  
- `0` → quando há **tensão elétrica inativa** (sinal desligado 💡)

Esses dígitos são chamados de **bits** (*binary digits*), e eles são a menor unidade de informação em computação.

---

### 🧱 O que é um bit e como ele se agrupa?

Um **bit** armazena um único valor binário: `0` ou `1`. Simples assim.

Mas com apenas 1 bit, conseguimos representar somente duas informações. Para algo mais útil (como letras, números maiores ou até imagens), precisamos agrupar esses bits.

A combinação mais comum é o **byte**, que é um conjunto de **8 bits**.

Com 8 bits, conseguimos representar **256 combinações** diferentes (de 0 a 255). Isso é suficiente, por exemplo, para representar todos os caracteres do alfabeto, símbolos e pontuações básicas usando a tabela ASCII (veremos abaixo).

📦 A partir do byte, temos:

- 1 **kilobyte (KB)** = 1024 bytes  
- 1 **megabyte (MB)** = 1024 KB  
- 1 **gigabyte (GB)** = 1024 MB  
- e assim por diante...

---

### 🧮 Como os números são representados?

Assim como no sistema decimal cada posição vale uma potência de 10 (ex: 1000, 100, 10, 1), no binário cada posição vale uma **potência de 2**.

Vamos analisar um número binário e converter para decimal:

#### Exemplo: `10010` (binário)

A leitura vai da direita para a esquerda, começando na posição 0:

```
Posição 4 → 1 × 2⁴ = 16  
Posição 3 → 0 × 2³ = 0  
Posição 2 → 0 × 2² = 0  
Posição 1 → 1 × 2¹ = 2  
Posição 0 → 0 × 2⁰ = 0  
Total = 16 + 0 + 0 + 2 + 0 = 18
```

✅ Resultado: `10010` em binário é igual a `18` em decimal.

---

### 🔁 Como converter decimal para binário?

O processo é o inverso: dividimos o número decimal por 2 repetidamente e anotamos o **resto** de cada divisão. Depois, basta ler os restos de **baixo para cima**.

#### Exemplo: `450` (decimal)

```
450 ÷ 2 = 225 → resto: 0  
225 ÷ 2 = 112 → resto: 1  
112 ÷ 2 = 56  → resto: 0  
56 ÷ 2  = 28  → resto: 0  
28 ÷ 2  = 14  → resto: 0  
14 ÷ 2  = 7   → resto: 0  
7 ÷ 2   = 3   → resto: 1  
3 ÷ 2   = 1   → resto: 1  
1 ÷ 2   = 0   → resto: 1
```

Lendo os restos de baixo pra cima:

📘 Resultado final: `111000010`

---

### 🔤 Representando textos: ASCII e Unicode

Nem tudo é número — eventualmente queremos representar **letras, palavras, símbolos, emojis...** E para isso, o computador também usa números binários.

#### ASCII (American Standard Code for Information Interchange)

A tabela ASCII associa números a caracteres. Por exemplo:

- Letra `A` → decimal `65` → binário `01000001`  
- Letra `a` → decimal `97` → binário `01100001`

Com 8 bits conseguimos representar até 256 caracteres — o suficiente para o alfabeto, dígitos, sinais de pontuação e alguns símbolos especiais.

#### Unicode / UTF-8

O **Unicode** surgiu para representar caracteres de **múltiplos idiomas e símbolos** (como acentos, emojis, kanji, entre outros). Um dos formatos mais usados é o **UTF-8**, que é compatível com ASCII nos primeiros 128 caracteres, mas permite codificar milhões de outros com combinações de até 4 bytes.

---

### 🔬 Tipos de dados numéricos: Inteiros vs. Ponto Flutuante

Quando falamos de números em linguagens de programação, estamos falando de **representações binárias específicas**.

- Números **inteiros** (como `Int`, `UInt8`, `Int32`, etc.) são armazenados diretamente em binário puro. Um `UInt8` usa 8 bits, ou seja, vai de `0` a `255`.

- Números **de ponto flutuante** (como `Float` e `Double`) representam valores com casas decimais. Eles seguem o padrão **IEEE 754**, que organiza os bits em três partes: sinal, expoente e fração (ou mantissa).

Esses formatos permitem representar números grandes ou pequenos com precisão decimal, embora envolvam mais complexidade em termos de armazenamento e performance.

---
