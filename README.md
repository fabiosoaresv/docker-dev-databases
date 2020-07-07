# Docker Development Databases

## Dependencies
- Docker
- Docker Compose

# Configuration
In project path's, make this command:

`cp docker-compose.yml.tpl docker-compose.yml`


# Alias úteis

```bash
alias dc="docker-compose"
alias dce="dc exec"
alias dcu="dc up -d"
alias dcs="dc stop"
alias dcd="dc down"
alias dcl="dc logs"
```

## Basic commands

### Build the template:
Without alias: `docker-compose build`
With alias: `dcb`

Always you make updates in `Dockerfile`, be necessary to make build again.

### Starting the containers
Without alias: `docker-compose up -d`
With alias: `dcu`

### Run commands in containers
Without alias: `docker-compose exec <container> <command>`
With alias: `dce <container> <command>`

Example::
Without alias: `docker-compose exec postgres psql -U postgres`
With alias: `dce postgres psql -U postgres`

### Stoping the containers
Without alias: `docker-compose stop`
With alias: `dcs`

### Removing the containers
Without alias: `docker-compose down`
With alias: `dcd`

### Removing images:
`docker rmi postgres:9.6.10`
