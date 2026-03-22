User API - ASP.NET Core

API RESTful desenvolvida em ASP.NET Core para gerenciamento de usuários, com autenticação baseada em JWT, persistência em SQLite e documentação interativa via Swagger.

O projeto demonstra a construção de uma API backend estruturada, com separação de responsabilidades e integração com cliente externo em Java.

Stack | .NET 8 | 
ASP.NET Core Web API | 
Entity Framework Core | 
SQLite | 
JWT (JSON Web Token) | 
Swagger / OpenAPI | 
C#

Arquitetura
A aplicação segue uma organização em camadas:

Controllers: exposição dos endpoints HTTP

Services: regras de negócio

Repositories: acesso a dados

Models/DTOs: definição de entidades e contratos

Data: contexto do banco (EF Core)

Essa estrutura facilita manutenção, testes e evolução do projeto.

Funcionalidades:
Cadastro de usuários

Autenticação com geração de token JWT

Autorização baseada em roles

Endpoints protegidos por autenticação

Integração com aplicação cliente em Java

Documentação automática com Swagger

Autenticação e Autorização

A API utiliza JWT para proteger rotas.

Fluxo:
O usuário realiza login

A API retorna um token JWT

O token deve ser enviado no header das requisições protegidas

Http
Authorization: Bearer {token}
Controle de acesso baseado em roles (ex: Admin, User).

Como executar localmente

Clonar o repositório
Bash
git clone https://github.com/iohanaallen/user-api.git
cd user-api

Restaurar dependências
Bash
dotnet restore

Executar a aplicação
Bash
dotnet run

Documentação (Swagger)

Após iniciar a aplicação:

https://localhost:{porta}/swagger

Permite testar todos os endpoints diretamente.

Endpoints principais

Criar usuário

Http
POST /api/users
JSON
{
  "username": "Mariah",
  "password": "M0712",
  "role": "Admin"
}

Login
Http
POST /api/auth/login
JSON
{
  "username": "Mariah",
  "password": "M0712"
}

Resposta:
JSON
{
  "token": "jwt_token"
}

Listar usuários (protegido)
Http
GET /api/users
Authorization: Bearer {token}

Integração com Java

A API foi integrada a um cliente Java, demonstrando:

Consumo de API REST via HTTP

Autenticação com JWT

Comunicação entre aplicações de stacks diferentes
Banco de dados

Banco: SQLite

ORM: Entity Framework Core

Migrations utilizadas para versionamento do schema

Roadmap

(próximos passos)

Migração para PostgreSQL

Implementação de testes automatizados (xUnit)

Refresh Token

Logging estruturado

Deploy em cloud (Render ou Azure)

Docker

Sobre o projeto

Projeto desenvolvido com foco em evolução para portfólio backend profissional, aplicando conceitos de:
APIs REST

Segurança com JWT

Arquitetura em camadas

Integração entre sistemas


Autora

Iohana Allen

LinkedIn: https://www.linkedin.com/in/iohana-allen

GitHub: https://github.com/iohanaallen
