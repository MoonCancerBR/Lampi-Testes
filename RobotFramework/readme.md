# 🤖 Automação de Testes de API com Robot Framework

Este guia fornece uma introdução técnica sobre como transformar testes manuais de API em scripts automatizados utilizando o Robot Framework.

---

## 1. 🌐 O que é Teste de API?

O teste de API envolve a verificação direta das interfaces de programação de aplicativos (APIs) para garantir que elas atendam às expectativas de funcionalidade, confiabilidade, desempenho e segurança. 

Diferente dos testes de interface (UI), o teste de API foca na **camada de lógica e dados**, permitindo identificar erros de regra de negócio antes mesmo da tela estar pronta.

---

## 2. 🤖 Robot Framework para API

O **Robot Framework** é um framework de automação de código aberto, genérico e baseado em palavras-chave (*Keyword-Driven*). 

**Por que usá-lo para APIs?**
- **Sintaxe Amigável:** Utiliza linguagem próxima do inglês (ou português), facilitando a leitura por membros não técnicos.
- **Extensível:** Permite o uso de bibliotecas Python para funcionalidades complexas.
- **Relatórios Nativos:** Gera logs e relatórios em HTML detalhados automaticamente após cada execução.

---

## 3. 📚 RequestsLibrary

A **RequestsLibrary** é a biblioteca padrão do Robot Framework para interagir com APIs REST. Ela é baseada na famosa biblioteca `requests` do Python.

**Conceitos Básicos:**
- **Create Session:** Estabelece uma conexão base com o servidor (URL base).
- **GET/POST On Session:** Realiza os verbos HTTP dentro da conexão estabelecida.
- **Status Should Be:** Keyword para validar se o retorno do servidor foi o esperado (ex: 200, 201).

---

## 4. 📝 Exemplo Simples de Automação

Abaixo, um exemplo de um script `.robot` para testar a busca de um usuário por ID:

```robotframework
*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    [https://jsonplaceholder.typicode.com](https://jsonplaceholder.typicode.com)

*** Test Cases ***
Validar Busca de Usuário Sucesso (GET)
    [Documentation]    Verifica se a API retorna os dados corretos do usuário 1
    Create Session    alias=api_session    url=${BASE_URL}    disable_warnings=1
    
    ${RESPOSTA}    GET On Session    api_session    /users/1
    
    Status Should Be    200    ${RESPOSTA}
    Should Be Equal As Strings    ${RESPOSTA.json()['username']}    Bret
    Log To Console    \nNome do usuário validado: ${RESPOSTA.json()['name']}
```
---
Explicação do Exemplo:
1.  **Settings:** Importamos a biblioteca necessária.
2.  **Variables:** Definimos a URL base para facilitar a manutenção.
3.  **Create Session:** Criamos um apelido (alias) para não precisar repetir a URL em todas as chamadas.
4.  **GET On Session:** Fazemos a chamada ao endpoint /users/1.
5.  **Status Should Be:** Validamos se o código de status é 200.
6.  **Should Be Equal:** Verificamos se um campo específico do JSON retornado é exatamente o que esperávamos.

---

## 5. 📊 Fluxo de Trabalho da Automação

1.  **Escrita:** O QA escreve o caso de teste em formato .robot.
2.  **Execução:** O Robot Framework interpreta as keywords e usa a RequestsLibrary para enviar o HTTP.
3.  **Validação:** O script compara a resposta real com a esperada.
4.  **Relatório:** O sistema gera um report.html com o passo a passo e o status de sucesso/falha.
