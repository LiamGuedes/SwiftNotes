## 🧾 Compiladores, Interpretadores e Máquinas Virtuais

Quando você escreve código em uma linguagem como Swift, Python ou Java, esse código **não é compreendido diretamente pelo computador**. Ele precisa ser **traduzido para linguagem de máquina**, que é binária e executável pela CPU.

Esse processo de tradução é feito por dois grandes protagonistas da computação: os **compiladores** e os **interpretadores**. Em alguns casos, entra também um terceiro ator — a **máquina virtual** — que ajuda a intermediar essa conversa entre o seu código e o hardware.

---

### 🏗️ O que é um compilador?

Um **compilador** é um programa que converte todo o código-fonte de uma linguagem de alto nível para **código de máquina** ou **código intermediário**, **antes da execução**.

Esse processo acontece em etapas, como:

1. **Análise léxica** – identifica os tokens do código (ex.: palavras-chave, operadores, identificadores)
2. **Análise sintática** – verifica a estrutura gramatical do código
3. **Análise semântica** – valida tipos, escopos e regras da linguagem
4. **Geração de código** – transforma o programa em código executável
5. **Otimização** – ajusta o código para rodar de forma mais eficiente

#### Exemplos de linguagens compiladas:
- Swift
- C / C++
- Rust
- Go

Essas linguagens **geram arquivos binários** (executáveis) que rodam diretamente no sistema operacional.

---

### ▶️ O que é um interpretador?

Um **interpretador** executa o código **linha por linha**, em tempo real, sem gerar um executável intermediário. Isso torna o ciclo de testes mais rápido, mas pode afetar o desempenho em programas grandes.

Funcionamento:

- Lê uma linha do código
- Traduz para linguagem de máquina
- Executa imediatamente
- Passa para a próxima linha

#### Exemplos de linguagens interpretadas:
- Python
- JavaScript
- Ruby
- Bash

São muito comuns para scripts, automações, e ambientes interativos.

---

### 🔁 Compilado + Interpretado: uma combinação moderna

Hoje, muitas linguagens adotam um modelo **híbrido**, misturando as duas abordagens:

- **Java**: compila para **bytecode**, que é interpretado (ou compilado JIT) pela **JVM**
- **Swift**: compila para código nativo, mas permite execução interpretada em playgrounds
- **JavaScript**: interpretado, mas otimizado em tempo real por motores como o **V8** (Chrome)

---

### ⚙️ O que é uma máquina virtual?

Uma **máquina virtual (VM)** é um ambiente de execução que simula um computador. Ela interpreta código intermediário (bytecode) e o traduz para instruções reais do sistema.

Com isso, o mesmo código pode rodar em diferentes plataformas, desde que tenha a VM correta instalada.

#### Exemplos de máquinas virtuais:
- **JVM (Java Virtual Machine)**
- **.NET CLR**
- **WebAssembly Runtime**
- **Swift Runtime**

---
