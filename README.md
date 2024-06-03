# Buisiness Insights test

## Introduction

This repo contains the code for the Buisiness Insights test.

## Running the code

To run the code, you need Docker Compose installed on your machine. If you don't have it installed, you can download it [here](https://docs.docker.com/compose/install/).

After installing Docker Compose, you can run the code by executing the following command in the root directory of the project:

```bash
docker compose -f Operations/docker-compose.yaml up
```

This command will start the api and the database services. The api will be available at http://localhost:8000 and the database will be available at http://localhost:5432.

## API Documentation

The API documentation is available at http://localhost:8000/docs.

## Database

The database is a PostgreSQL database and it is available at http://localhost:5432. The database name is `insurance` and the user is `postgres` with password `postgres`.

The database is initialized automatically on startup with the data provided for the test.

## Swagger and usage

The API is documented using Swagger and you can access the documentation at http://localhost:8000/docs.

In order to use the API endpoints you need to login first. You can do that by calling the `/login` endpoint with the following credentials (to do so you can use the Swagger UI itself by clicking on the `Authorize` button on the top right corner of the Swagger UI and adding the username and password):

```json
{
  "username": "[VALID_USER_EMAIL]",
  "password": "[ANYTHING]"
}
```

This will provide you with a JWT token that you can use to authenticate your requests. You can use the token by clicking the `Authorize` button on the top right corner of the Swagger UI and pasting the token in the `Value` field with the `Bearer` prefix.

More endpoints than the ones requested where implemented, you can check them on the Swagger UI.
