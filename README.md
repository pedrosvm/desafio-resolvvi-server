# README
===
---
Resolvvi Challenge - API Server
--

This project was a technical challenge sent by Resolvvi.

The goal was to create a server to respond to an external application that will request:

- User registration
- User authentication
- Registration of legal requests
- List of requests already registered
- Name of the lawyer available to the user at the time of the request



Requirements
--

To make the project were used:

- Rails 5.2
- PostgreSQL
- Rack Cors
- Devise
- Devise-jwt


To run locally
--

Create the folder and access it:

	mkdir server-api
	cd server-api


Copy the repository locally:

	git clone 'https://github.com/jordyalcides/desafio-resolvvi-server.git'


Start the database with the pre-made seeds:

	bundle install
	rails db: setup
	rails s -p 3001
	

The seeds for the project contain:

- The list of 27 Federative Units to provide for the user sign up
- A list of 5 Lawyers (From first 5 Federative Units) to attend to legal requests from users

That's it, your API server is now running!




# LEIAME
===
---
Desafio Resolvvi - API Server
--
Esse projeto foi um desafio técnico enviado pela Resolvvi.

O objetivo era criar um servidor para responder a uma aplicação externa que irá solicitar:

- Cadastro de usuários
- Autenticação de usuários
- Cadastro de pedidos de indenização
- Lista dos pedidos já cadastrados
- Nome do advogado disponível para o usuário no momento do pedido de indenização




Requisitos
--

Para fazer o projeto foram utilizados:

- Rails 5.2
- PostgreSQL
- Rack Cors
- Devise
- Devise-jwt


Para executar localmente
--

Crie a pasta e acesse a mesma:

	mkdir server-api
	cd server-api


Copie o repositório localmente:

	git clone 'https://github.com/jordyalcides/desafio-resolvvi-server.git'


Inicie o banco de dados com as seeds pré-prontas:

	bundle install
	rails db:setup
	rails s -p 3001

	
As seeds do projeto contém:

- A lista com as 27 Unidades Federativas para o cadastro do usuário
- Uma lista com 5 advogados (Dos 5 primeiros estados) para atender a requisições legais dos usuários


É isso, seu servidor API já está executando!