# Flarum Extension Development Environment

![License](https://img.shields.io/badge/license-MIT-blue.svg)

A dockerised [Flarum](http://flarum.org) development environment.

### Configuration

Place your extensions under the `packages` directory and you can then include them as normal, specifying the version as '\*@dev': `composer require acme/extension *@dev`.

---

#### With NGINX

If you want to use the reverse proxy to provision SSL certs and allow VHOST access to your server externally, follow these steps before proceeding.

Create the frontend network if you're using the NGINX reverse proxy:

`docker network create flarum-frontend`

Configure the `VIRTUAL_HOST` environment variable on the Flarum container, e.g.:

`VIRTUAL_HOST=flarum.example.com`

Use docker-compose to run all the services:

`docker-compose up -d`

---

#### Without NGINX

If you don't want the NGINX proxy you can just run flarum and the database will launch as a dependency:

`docker-compose up -d flarum`

The server should then be accessible via port 80. You can modify this in the docker-compose file.

---

Follow the logs if you'd like:

`docker-compose logs -f`

You can then attach to the flarum container via CLI or VS Code if need be.

`docker-compose exec -it flarum bash`

Or you can install your extension 'acme/extension' without entering the container:

`docker-compose exec flarum composer-require acme/extension \*@dev`

This environment is utilising [shinsenter/flarum](https://github.com/shinsenter/php/tree/main/src/webapps/flarum)
