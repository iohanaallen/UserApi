UserApi:

API REST desenvolvida em ASP.NET Core com banco de dados SQLite, criada como parte dos meus estudos para me tornar Desenvolvedora Back-End.

Funcionalidades:

Estrutura organizada de projeto em ASP.NET Core

Banco de dados SQLite para persistência

Segue o padrão RESTful para endpoints

Contém autenticação básica (se aplicar)

Controle de usuários (CRUD completo)

Tecnologias:

.NET 7 (ou a versão que estiver usando)

Entity Framework Core

SQLite

Visual Studio / VS Code

Como executar localmente:

Pré-requisitos:
.NET SDK instalado

Editor de código (VS Code, Visual Studio, etc)

Passos para rodar:

bash
Copiar
Editar
git clone https://github.com/iohanaallen/UserApi.git
cd UserApi
dotnet restore
dotnet run

A API vai estar disponível em http://localhost:5000 (ou a porta configurada).

Endpoints disponíveis

Método	Endpoint	Descrição
GET	/users	Retorna todos os usuários
GET	/users/{id}	Retorna usuário por ID
POST	/users	Cria um novo usuário
PUT	/users/{id}	Atualiza usuário por ID
DELETE	/users/{id}	Remove usuário por ID

Estrutura do projeto:

bash
Copiar
Editar
/Controllers
/Data
/Models
/Migrations
/Program.cs
/appsettings.json

Próximos passos:

Implementar autenticação JWT

Criar testes automatizados

Configurar integração contínua com GitHub Actions

Contato
Para dúvidas ou sugestões, me envie uma mensagem no GitHub ou LinkedIn!:
