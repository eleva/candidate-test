<h2 style="color:#ce4e43"><img width="25" alt="2022-04-09_122409" src="eleva-logo.jpeg"> Welcome in <a style="color:#ce4e43;text-decoration: underline" target="_blank" href="https://www.eleva.it">Eleva</a></h2>
This repo contains a basic symfony app, which will help us knowing each other.

<h3 style="color:#ce4e43">🐳 Enviroment</h2>
This repo runs on docker nginx, node.js, phpfpm and mysql containers.

<h3 style="color:#ce4e43">📖 Setup</h2>
Follow these instructions to setup this project:

1. in case you do not have Docker already installed on your client, please follow instructions at <https://www.docker.com/get-started.>
2. copy `/.env.dist` file and rename it as `/.env`.
3. copy `/.dev/docker/.env.dist` file and rename it as `/.dev/docker/.env`.
4. open terminal and execute  the following line to add the hostname to your host file (your password will be requested)
     ```bash
     candidate-test$ cmd/host
     ```
   or on windows, open cmd/host file and remove sudo, then execute
     ```bash
     candidate-test$ sh cmd/host
     ```

6. open terminal and execute the following line to install everything is required
     ```bash
     candidate-test$ cmd/run
     ```
   or on windows
     ```bash
     candidate-test$ sh cmd/run
     ```
   
   This script will launch docker build, install symfony required packages with composer, execute webpack by encore and run all containers needed.

<h3 style="color:#ce4e43">🚀 Run</h2>
Just open terminal and execute

  ```bash
  candidate-test$ cmd/run
  ```

or on windows

   ```bash
   candidate-test$ sh cmd/host
   ```
