User API - ASP.NET Core

API RESTful para gerenciamento de usuários.

Autenticação via JWT.

Persistência com Entity Framework Core + SQLite.

Documentação com Swagger.

Projeto orientado a backend real, segurança e organização em camadas.

.

Stack

.NET 8
ASP.NET Core Web API
Entity Framework Core
SQLite
JWT
Swagger
C#

.

Status

Em evolução
Pronto para uso local
Preparado para deploy

.

Arquitetura
UserApi/

Controllers/
Services/
Repositories/
Models/
DTOs/
Data/
Migrations/
Program.cs

.

Camadas:

Controllers → entrada HTTP
Services → regra de negócio
Repositories → acesso a dados
DTOs → contrato da API

.

Padrões aplicados:

Separation of Concerns
Dependency Injection
DTO Pattern
Repository Pattern

.

Segurança

JWT (stateless)

Login → gera token → acesso protegido

Authorization: Bearer {token}

.

Controle de acesso:

Authorize
Authorize(Roles = "Admin")

.

Funcionalidades

Cadastro de usuários
Login com JWT
Autorização por role
Rotas protegidas
Swagger ativo
Integração com Java

.

Execução

Clone:

git clone https://github.com/iohanaallen/UserApi.git
cd UserApi


Restore:

dotnet restore


Database:

dotnet ef database update


Run:

dotnet run
Swagger
https://localhost:{porta}/swagger
Endpoints


Register

POST /api/auth/register
{
  "username": "usuario",
  "password": "senha",
  "role": "User"
}


Login

POST /api/auth/login
{
  "username": "usuario",
  "password": "senha"
}


Response

{
  "token": "jwt_token"
}


Profile

GET /api/auth/profile
Authorization: Bearer {token}


Admin

GET /api/auth/admin-dashboard
Authorization: Bearer {token}
Banco


SQLite
Entity Framework Core
Migrations

.

Integração

API consumida por aplicação Java.

HTTP + JWT
Comunicação entre stacks

.

Roadmap

PostgreSQL
Testes (xUnit)
Refresh Token
Logging (Serilog)
Docker
Deploy (Render / Azure)


Deploy (em breve)

URL pública será adicionada aqui após deploy.

.

Diferencial


Autenticação completa com JWT
Controle por roles
Estrutura pronta para escalar
Integração real com outra linguagem

.

Autora

Iohana Allen
LinkedIn: https://www.linkedin.com/in/iohana-allen

GitHub: https://github.com/iohanaallen
