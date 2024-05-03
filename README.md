# CRUD Application - Avaliação 3 - DESENVOLVIMENTO WEB - EAD54-12

Este projeto é uma atividade avaliativa do componente curricular, onde será desenvolvido um CRUD (Create, Read, Update, Delete) em uma temática livre.

## Descrição

A atividade consiste na criação de um aplicativo CRUD utilizando a linguagem de programação Ruby on Rails e um banco de dados Postgresql para gerenciar tarefas. O aplicativo permitirá que os usuários criem, visualizem, editem e excluam tarefas de uma lista.

## Instalação

Tendo a versão ruby 3.1.2 instalada, siga estas etapas para configurar e executar o projeto localmente em sua máquina:

1. Clone o repositório para sua máquina local:

`git clone https://github.com/LuanTedesco/crud-task`

2. Navegue até o diretório do projeto:

`cd crud-task`

3. Instale as dependências do Ruby utilizando o Bundler:

`bundle install`

4. Crie o banco de dados e execute as migrações:

`rails db:create`
`rails db:migrate`

5. (Opcional) Carregue os registros iniciais no banco de dados:

`rails db:seed`

6. Inicie o servidor Rails:

`rails server`

7. Abra um navegador da web e acesse `http://localhost:3000` para visualizar o aplicativo.

## Funcionalidades

- Criação de novas tarefas.
- Visualização da lista de tarefas.
- Visualização da tarefa.
- Edição de tarefas existentes.
- Exclusão de tarefas.
