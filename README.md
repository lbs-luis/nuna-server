# NUNA - Backend Server

Este repositório contém o servidor backend do projeto **NUNA**, uma aplicação que permite acompanhar seus hábitos e objetivos de rotina, gerenciando-os conforme você os conclui diariamente e semanalmente, além de monitorar sua constância.

## Índice

- [Descrição](#descrição)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Configuração do Ambiente](#configuração-do-ambiente)
- [Comandos Disponíveis](#comandos-disponíveis)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [APIs](#apis)
- [Contribuindo](#contribuindo)
- [Licença](#licença)

## Descrição

Em quechua, "Nuna" significa alma ou espírito. O nome evoca o aspecto motivacional e o equilíbrio interior que o aplicativo oferece. O backend do projeto é responsável por gerenciar a lógica de negócios, manipulação de dados e rotas da API para o acompanhamento de hábitos e metas.

## Tecnologias Utilizadas

- **Node.js** >= 14
- **TypeScript** >= 5.5.4
- **Fastify** - Framework rápido para construção de APIs
- **Drizzle ORM** - ORM para interação com o banco de dados
- **PostgreSQL** - Banco de dados relacional
- **Zod** - Validação de esquema de dados
- **Day.js** - Manipulação de datas
- **CUID2** - Gerador de IDs únicos
- **dotenv** - Gerenciamento de variáveis de ambiente

## Configuração do Ambiente

1. Clone o repositório:

   ```bash
   git clone https://github.com/seu-usuario/nuna-server.git
   cd nuna-server
   ```

2. Instale as dependências:

   ```bash
   pnpm install
   ```

3. Configure as variáveis de ambiente:

   Crie um arquivo `.env` com base no exemplo fornecido (`.env.example`) e preencha as variáveis de ambiente necessárias.

4. Execute o banco de dados usando Docker:

   ```bash
   docker-compose up -d
   ```

## Comandos Disponíveis

### Desenvolvimento

- **Iniciar o servidor em modo de desenvolvimento**:
  ```bash
  pnpm dev
  ```

- **Construir o projeto para produção**:
  ```bash
  pnpm build
  ```

- **Iniciar o servidor em modo de produção**:
  ```bash
  pnpm start
  ```

### Banco de Dados

- **Gerar e executar migrações**:
  ```bash
  pnpm db:up
  ```

- **Seed do banco de dados**:
  ```bash
  pnpm db:seed
  ```

## Estrutura do Projeto

Abaixo está uma visão geral dos arquivos principais deste backend:

- **src/**
  - **http/**
    - `server.ts`: Arquivo principal que inicializa o servidor Fastify.
  - **db/**
    - `migrations/`: Arquivos de migração do banco de dados.
    - `seed.ts`: Script para popular o banco de dados com dados iniciais.
  - **handlers/**
    - `create-goal.ts`: Lida com a criação de novas metas.
    - `goal-completions.ts`: Lida com o acompanhamento da conclusão de metas.
    - `get-week-summary.ts`: Gera um resumo das metas concluídas na semana.
    - `get-week-pending-goals.ts`: Recupera metas pendentes da semana.

## APIs

O servidor expõe diversas rotas RESTful para gerenciamento de hábitos e objetivos, como:

- `POST /goals`: Criação de um novo objetivo
- `POST /goals/:id/completions`: Registrar a conclusão de um objetivo
- `GET /goals/summary`: Obter um resumo semanal de metas

A documentação completa da API estará disponível em breve.

## Contribuindo

Se você quiser contribuir para o projeto, por favor siga os passos descritos no [guia de contribuição](https://github.com/seu-usuario/nuna-server/blob/main/CONTRIBUTING.md).

## Licença

Este projeto está licenciado sob a Licença **AGPL-3.0**. Veja o arquivo [LICENSE](https://github.com/seu-usuario/nuna-server/blob/main/LICENSE) para mais detalhes.
