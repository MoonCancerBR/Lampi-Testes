# GitHub

Este documento detalha como normalmente se é utilizado o GitHub para trabalhar em equipe, garantindo a integridade do código e a fluidez do desenvolvimento.

## 🌐 O que é o GitHub?

O **GitHub** é a uma plataforma de hospedagem e colaboração. Enquanto o Git cuida das versões no seu computador, o GitHub permite que o time compartilhe essas versões, discuta melhorias e gerencie o fluxo de entrega (deploy).

## 📁 O Repositório (Repo)

O repositório é o "coração" do projeto. Ele contém:
- **Código-fonte:** Todos os arquivos do software.
- **Histórico:** Cada alteração feita desde o dia 1.
- **Issues:** Tarefas, bugs e sugestões documentadas.
- **Docs:** Documentação técnica para novos membros.

---

## 🏗️ O Fluxo de Colaboração (GitHub Flow)

Para manter a organização, seguimos este processo padrão:

1. **Clone**: Baixe o projeto para sua máquina (`git clone`).
2. **Branch**: Crie uma ramificação para sua tarefa (Ex: `feature/login-social`).
3. **Commit & Push**: Salve seu trabalho e envie a branch para o GitHub.
4. **Pull Request (PR)**: O passo mais importante! Abra um PR para avisar que sua tarefa está pronta.
5. **Code Review**: Outros desenvolvedores analisam seu código, fazem perguntas ou sugerem ajustes.
6. **Merge**: Após a aprovação, o código é mesclado à branch principal (`main`).

---

## 🔀 Pull Request: O Conceito

Um **Pull Request (PR)** não é apenas um comando, é uma **conversa**. 

> "Estou pedindo para você puxar (*pull*) minhas mudanças para o projeto oficial."

**Por que fazemos PRs?**
- ✅ Evita erros humanos no código principal.
- ✅ Compartilha conhecimento entre o time.
- ✅ Garante que o código segue os padrões do projeto.

---

## 🚨 Boas Práticas de Convivência

| Recurso | Como usar com sabedoria |
| :--- | :--- |
| **Issues** | Descreva o problema detalhadamente antes de começar a codar. |
| **Labels** | Use etiquetas como `bug`, `enhancement` ou `help wanted`. |
| **Review** | Seja gentil nas críticas e específico nos elogios. |
| **Commits** | Escreva mensagens claras (Ex: `fix: corrige erro de autenticação`). |
