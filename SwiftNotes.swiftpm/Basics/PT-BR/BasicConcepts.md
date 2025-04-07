## 💡 Entendendo o Sistema Binário

Os computadores utilizam o **sistema binário** para representar e processar informações. Um dos principais motivos é a **simplicidade física e eletrônica**: circuitos digitais só precisam identificar dois estados:

- **Tensão elétrica ativa** (ligado) → representado pelo dígito `1`  
- **Tensão elétrica inativa** (desligado) → representado pelo dígito `0`

Com isso, todos os dados — textos, imagens, sons e instruções — são armazenados e manipulados como sequências de `0`s e `1`s.

---

## 🔢 Comparando Bases Numéricas: Decimal vs. Binário

O sistema decimal (base 10), que usamos naturalmente no dia a dia, utiliza **10 algarismos (de 0 a 9)**. A posição de cada dígito em um número define seu valor com base em potências de 10:

```
Posição 0: 10^0 = 1  
Posição 1: 10^1 = 10  
Posição 2: 10^2 = 100  
Posição 3: 10^3 = 1000  
```

No sistema binário (base 2), o princípio é o mesmo, mas só são usados dois dígitos: `0` e `1`, e as potências são de 2:

```
Posição 0: 2^0 = 1  
Posição 1: 2^1 = 2  
Posição 2: 2^2 = 4  
Posição 3: 2^3 = 8  
```

---

## 🧮 Convertendo Binário para Decimal

Para converter um número binário em decimal, basta multiplicar cada dígito pelo valor da sua posição (potência de 2) e somar os resultados.

**Exemplo:**

Convertendo o número binário `10010` para decimal:

```
1 × 2^4 = 16  
0 × 2^3 = 0  
0 × 2^2 = 0  
1 × 2^1 = 2  
0 × 2^0 = 0  
Soma: 16 + 0 + 0 + 2 + 0 = 18
```

Portanto, `10010 (binário)` = `18 (decimal)`.

---

## 🔁 Convertendo Decimal para Binário

O processo inverso é feito dividindo o número decimal sucessivamente por 2 e armazenando o **resto** de cada divisão. Os restos devem ser lidos **de baixo para cima**.

**Exemplo:**

Convertendo o número decimal `450` para binário:

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

Agora, organizando os restos em ordem inversa:

```
Binário: 111000010
```

Logo, `450 (decimal)` = `111000010 (binário)`.

---

## 🧱 O que é um Bit?

Um **bit** (abreviado de *binary digit*) é a menor unidade de informação que pode ser representada em um computador: `0` ou `1`. Ele expressa exatamente o estado de um circuito: ligado ou desligado.

A arquitetura de um processador é frequentemente descrita em termos de bits — por exemplo, **32 bits** ou **64 bits** — indicando o tamanho máximo das instruções e dos endereços de memória que ele pode manipular de uma vez.

### Capacidade Máxima de Representação

Por exemplo, um processador de **32 bits** pode representar números binários de até 32 dígitos. O maior valor que pode ser representado com 32 bits (todos os bits em `1`) é:

```
Binário: 11111111111111111111111111111111  
Decimal: 4.294.967.295  (ou seja, 2^32 - 1)
```

---
