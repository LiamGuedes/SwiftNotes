## 🔢 Sistemas de Numeração: Binário, Octal, Decimal e Hexadecimal

Na programação (e na computação em geral), os números não estão restritos apenas à forma decimal que usamos no dia a dia. Computadores utilizam diferentes **sistemas de numeração** — cada um com características e aplicações específicas.

Entender esses sistemas é essencial para lidar com **endereços de memória**, **cores em interfaces gráficas**, **máscaras de bits**, e muito mais.

---

### 🔟 Sistema Decimal (Base 10)

Esse é o sistema que usamos naturalmente desde pequenos. Ele utiliza **dez dígitos**: de `0` a `9`.

Cada posição representa uma **potência de 10**, da direita para a esquerda:

```
Número: 1 2 3  
Cálculo: 1×10² + 2×10¹ + 3×10⁰  
Resultado: 100 + 20 + 3 = 123
```

É intuitivo para humanos, mas **pouco eficiente para eletrônicos**, que trabalham melhor com sistemas de base menor.

---

### ⚙️ Sistema Binário (Base 2)

Como vimos anteriormente, o sistema binário é a **linguagem nativa dos computadores**. Ele usa apenas os dígitos `0` e `1`, e cada posição representa uma potência de 2.

```
Número: 1 0 0 1 0  
Cálculo: 1×2⁴ + 0×2³ + 0×2² + 1×2¹ + 0×2⁰  
Resultado: 16 + 0 + 0 + 2 + 0 = 18
```

O binário é ideal para representar os estados “ligado” e “desligado” de componentes eletrônicos.

---

### 🧮 Sistema Octal (Base 8)

O sistema octal utiliza os dígitos de `0` a `7`. Cada posição representa uma potência de 8. Embora seja menos comum atualmente, já foi muito utilizado em programação de baixo nível e leitura de permissões em sistemas Unix.

**Exemplo de conversão decimal → octal:**

```
Decimal: 83  
83 ÷ 8 = 10 → resto: 3  
10 ÷ 8 = 1  → resto: 2  
1 ÷ 8  = 0  → resto: 1  
Resultado: 123 (octal)
```

Para indicar que um número está em octal, muitas linguagens prefixam com `0`, por exemplo: `0123`.

---

### 🧪 Sistema Hexadecimal (Base 16)

O sistema hexadecimal (ou simplesmente “hex”) é extremamente usado em computação por ser **mais compacto que o binário** e fácil de traduzir para ele.

Ele utiliza 16 símbolos:

```
0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F  
(A = 10, B = 11, ..., F = 15)
```

Cada posição representa uma potência de 16:

```
Número: 2 A  
Cálculo: 2×16¹ + A×16⁰ = 2×16 + 10×1 = 32 + 10 = 42 (decimal)
```

Hexadecimais são muito usados para:

- Endereços de memória (`0x1A3F`)  
- Representação de cores (ex.: `#FF5733` → RGB)  
- Codificação de bytes

---

### 🔁 Relação entre os sistemas

Alguns sistemas possuem **conversão direta entre si**, principalmente binário, octal e hexadecimal:

- Cada **dígito octal** equivale a **3 bits binários**  
- Cada **dígito hexadecimal** equivale a **4 bits binários**

#### Exemplo: binário → hexadecimal

```
Binário: 11010111  
Agrupar de 4 em 4: 1101 0111  
1101 = D, 0111 = 7  
Resultado: 0xD7
```

Esse agrupamento direto facilita a leitura e depuração de valores binários em forma mais legível.

---

### 🧩 Qual usar e quando?

| Sistema     | Base | Aplicação comum                        |
|-------------|------|----------------------------------------|
| Decimal     | 10   | Uso humano geral                      |
| Binário     | 2    | Processamento interno do computador   |
| Octal       | 8    | Sistemas Unix, permissões de arquivos |
| Hexadecimal | 16   | Endereços, cores, bytes, debugging     |

---
