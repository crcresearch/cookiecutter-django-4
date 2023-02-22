# Starting Django CookieCutter

## Startup

There are two ways to start the Django Cookiecutter:

- Locally
- Locally Using Docker

### Starting Locally

To start locally, follow these steps:

- Install the necessary dependencies on your computer, such as Python and PostgreSQL.
- Set up a virtual environment to manage your project's dependencies.
- Use Django Cookiecutter to build your web application. See the [Developing Locally](https://cookiecutter-django.readthedocs.io/en/latest/developing-locally.html) guide for more information.

### Starting Locally with Docker

To start locally with Docker, follow these steps:

- Refer to the [Developing Locally with Docker](https://cookiecutter-django.readthedocs.io/en/latest/developing-locally-docker.html) guide.
- Use the containerized development environment provided by Docker to build your web application.

## Basic Commands

### Build the Stack
#### For Local Development
If you wish to develop and build the project locally, you want to use the `local-ts.yml`. This file contains only the necessary services needed for local development. 

To build using the `local-ts.yml`, open a terminal at the project root and run the command:

    $ docker-compose -f local-ts.yml build

#### For Production
If you wish to run the project in production, you will need to build the stack first.

To build the stack for production, open a terminal and run the following command:

    $ docker-compose -f production-ts.yml build

### Run the Stack
#### For Local Development
Running the stack for local development brings up all the services defined in the `local-ts.yml` file. 

To run the stack for local development, open a terminal and run the following command:

    $ docker-compose -f local-ts.yml up

#### For Production
Running the stack for production brings up all the services defined in the `production-ts.yml` file. This file contains necessary files for production such as nginx.

To run the stack for production, open a terminal and run the following command:

    $ docker-compose -f production-ts.yml up