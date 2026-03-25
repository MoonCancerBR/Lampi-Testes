# Git & Versionamento

Nesta parte do repositório contém o material de estudo e a documentação básica sobre Git e controle de versão, essencial para a colaboração e organização de projetos de software.

## 📌 O que é Versionamento?

O **Controle de Versão** é um sistema que registra as mudanças feitas em arquivos ao longo do tempo. Ele permite que desenvolvedores trabalhem simultaneamente no mesmo código sem o risco de perda de dados.

**Principais benefícios:**
- **Histórico:** Saber exatamente quem mudou o quê e quando.
- **Reversibilidade:** Voltar para uma versão estável se algo der errado.
- **Trabalho em Equipe:** Fusão de códigos de diferentes pessoas de forma organizada.

---

## 🛠️ Comandos Principais

Aqui estão os comandos fundamentais divididos por categoria:

### 1. Configuração e Início
- `git init`: Inicializa um novo repositório local.
- `git clone <url>`: Clona um repositório remoto para sua máquina.

### 2. Ciclo de Alterações
- `git status`: Exibe o estado atual dos arquivos (quais foram modificados).
- `git add .`: Prepara todos os arquivos modificados para o próximo commit.
- `git commit -m "mensagem"`: Salva as alterações no repositório local com uma descrição.

### 3. Sincronização
- `git pull`: Baixa as atualizações do servidor e as mescla ao seu código.
- `git push`: Envia seus commits locais para o servidor remoto.

### 4. Ramificação (Branches)
- `git branch`: Lista as branches existentes.
- `git checkout -b <nome>`: Cria uma nova branch e muda para ela.
- `git merge <nome>`: Une as alterações de uma branch específica à sua branch atual.

---

## 🔄 Fluxo de Trabalho (Workflow)

O fluxo básico seguido pela equipe deve ser:

1. **Pull**: Sempre comece o dia atualizando seu código local (`git pull`).
2. **Branch**: Crie uma branch para a tarefa específica (`git checkout -b minha-tarefa`).
3. **Code**: Desenvolva suas alterações.
4. **Staging**: Adicione os arquivos alterados (`git add .`).
5. **Commit**: Salve o progresso localmente (`git commit -m "descritivo do que foi feito"`).
6. **Push**: Envie para o GitHub (`git push origin minha-tarefa`).
