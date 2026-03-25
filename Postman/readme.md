# 🚀 Guia de Testes de API com Postman

Este documento reúne os conceitos fundamentais sobre APIs, os métodos de comunicação HTTP e o passo a passo para utilizar o Postman como ferramenta de validação e testes.

---

## 1. 🌐 O que é uma API?

**API** (*Application Programming Interface*) é a ponte que permite a comunicação entre dois sistemas. No desenvolvimento moderno, ela é o que conecta o Front-end (interface) ao Back-end (servidor e banco de dados).

- **Analogia:** Imagine um garçom. Você (cliente) faz o pedido, o garçom (API) leva o pedido à cozinha (servidor) e traz o prato (dados) de volta para você.

---

## 2. 📡 Métodos HTTP (Verbos)

Para que a comunicação seja clara, utilizamos "verbos" que indicam a intenção da nossa requisição:

| Método | Ação | Exemplo de Uso |
| :--- | :--- | :--- |
| **GET** | Recuperar dados | Listar todos os usuários cadastrados. |
| **POST** | Criar dados | Cadastrar um novo produto no estoque. |
| **PUT** | Atualizar dados | Alterar todos os dados de um registro existente. |
| **PATCH** | Atualização parcial | Alterar apenas o preço de um produto. |
| **DELETE** | Remover dados | Excluir uma conta de usuário. |

---

## 🛠️ 3. Como usar o Postman

O **Postman** é a ferramenta líder para testar APIs sem precisar escrever código de Front-end.

### Estrutura do Postman:
* **Collections:** Pastas para organizar suas requisições por projeto ou funcionalidade.
* **Environments:** Variáveis que permitem alternar entre ambientes (ex: Local, Homologação, Produção) sem mudar a URL manualmente.
* **Request Builder:** Onde você define o Método, a URL, os Headers e o Body.
* **Response Panel:** Onde você visualiza o resultado retornado pelo servidor.

---

## 📝 4. Exemplo Prático de Requisição

Vamos simular a criação de um item via API:

**Configuração da Requisição:**
1.  **Método:** `POST`
2.  **URL:** `https://api.exemplo.com/v1/usuarios`
3.  **Headers:** Adicione a chave `Content-Type` com o valor `application/json`.
4.  **Body (Raw > JSON):**
```json
{
  "nome": "João Silva",
  "email": "joao@email.com",
  "cargo": "Desenvolvedor"
}
```
---
## 📊 Entendendo a Resposta (Status Codes)
Ao clicar em Send, o Postman retornará um código de status:

* **200 (OK):** Sucesso na requisição.
* **201 (Created):** Recurso criado com sucesso (comum em POST).
* **400 (Bad Request):**  Erro no envio (dados faltando ou incorretos).
* **401 (Unauthorized):** Falta de autenticação (token inválido).
* **404 (Not Found):**  A URL ou o recurso não existem.
* **500 (Internal Server Error):** Erro crítico no servidor.
---
## 🧪 5. Automatizando Testes Simples
Dentro do Postman, na aba "Tests", você pode escrever scripts rápidos em JavaScript para validar a resposta:
```javascript// Validar se o status code é 200
pm.test("Status code é 200", function () {
    pm.response.to.have.status(200);
});

// Validar se o tempo de resposta é menor que 500ms
pm.test("Resposta rápida (menos de 500ms)", function () {
    pm.expect(pm.response.responseTime).to.be.below(500);
});
```
