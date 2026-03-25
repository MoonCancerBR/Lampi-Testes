# ✍️ Guia de Boas Práticas: Commits Semânticos

Este documento estabelece as diretrizes para a escrita de mensagens de commit, garantindo um histórico de projeto organizado, rastreável e fácil de entender por qualquer membro da equipe.

---

## 1. 📂 O que são Commits?

Um **commit** é mais do que apenas salvar o código; é um registro histórico de uma alteração no projeto. Pense nele como uma "foto" do estado atual dos arquivos acompanhada de uma explicação do porquê aquela mudança foi feita.

---

## 2. 🌟 Boas Práticas Gerais

Para manter a qualidade do repositório, siga estas regras de ouro:

* **Commits Atômicos:** Cada commit deve focar em apenas uma tarefa ou correção. Evite commitar "meio mundo" de arquivos diferentes de uma vez.
* **Mensagens Claras:** O título deve ser curto e direto. Se precisar explicar muito, use o corpo do commit (descrição longa).
* **Use o Imperativo:** Escreva como se estivesse dando um comando (Ex: "Adiciona" em vez de "Adicionado" ou "Adicionando").
* **Não "Suje" o Histórico:** Evite mensagens como "ajustes", "arrumando erro" ou "teste123".

---

## 3. 🛠️ Padrão Escolhido: Conventional Commits

Adotamos o padrão **Conventional Commits**, que utiliza prefixos para identificar rapidamente a natureza da alteração.

### Estrutura do Commit:
`<tipo>: <descrição curta>`

### Principais Tipos:
* **feat**: Uma nova funcionalidade (feature) para o usuário.
* **fix**: Correção de um bug.
* **docs**: Alterações apenas na documentação (como este README).
* **style**: Mudanças que não afetam o sentido do código (espaços, formatação, ponto e vírgula).
* **refactor**: Mudança no código que não corrige erro nem adiciona funcionalidade (melhoria de escrita).
* **test**: Adição ou correção de testes.
* **chore**: Atualizações de tarefas de build, pacotes ou ferramentas auxiliares.

---

## 4. 📝 Exemplos Práticos

| Situação | Exemplo de Mensagem |
| :--- | :--- |
| Criou a tela de login | `feat: implementa formulário de login` |
| Corrigiu erro no cálculo de frete | `fix: corrige soma de valores no carrinho` |
| Atualizou o manual do sistema | `docs: atualiza guia de instalação` |
| Refatorou um método antigo | `refactor: simplifica validação de CPF` |
| Adicionou automação Robot | `test: cria suite de testes para API de produtos` |

---

## 🚀 Como escrever um bom commit via terminal

```bash
git commit -m "feat: adiciona integração com gateway de pagamento"
```
Para descrições longas (opcional):

```bash
git commit -m "fix: corrige erro de autenticação" -m "O erro ocorria devido ao tempo de expiração do token estar muito curto no ambiente de homologação."
```
