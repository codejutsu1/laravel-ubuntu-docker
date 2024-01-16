# Laravel Docker Configuration on Ubuntu OS

You can run a laravel applicaition even if you don't have PHP, NGINX, PHPMYADMIN, MYSQL, MAILHOG and Composer on your local machine. You can achieve this using the docker services in the [docker-compose.yml file](https://github.com/codejutsu1/laravel-ubuntu-docker/blob/main/docker-compose.yml).

I also configured PHP and NGINX for local development with laravel.

## Prerequisite
- Docker
- Docker Compose

## Installation

- To install a fresh laravel project with composer, assuming composer is not installed on your local machine. 
    - Open your terminal
    - Cd to the directory you want to install your project
    - Then Run;

```
docker run --rm -v $HOME/.cache/composer:/tmp -v $(pwd):/app -w /app composer composer create-project --prefer-dist laravel/laravel {your-app-name}
```

This command will install a composer image and create a fresh laravel project.

> For more information, check the [setup.txt file](https://github.com/codejutsu1/laravel-ubuntu-docker/blob/main/setup.txt).

### To Run on docker

- Copy the folders and files of this directory to your laravel project.

Then run 

```
docker compose up -d
```
To build the images and create a container for your project.