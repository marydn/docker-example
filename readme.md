### 🌍 Application execution

1. Start the project: `$ make start`
   
    This will bring up the project Docker containers with Docker Compose.

2. Check everything's up: `$ docker-composer ps`

    It should show nginx and php services up.

3. Go to `http:://localhost:8000` in your browser


### 🚀 Other commands you may need

To bring down Docker: `make destroy`

If you need to reload nginx and php services inside containers: `make reload`

If you need to rebuild docker containers withouth using cache: `make rebuild`