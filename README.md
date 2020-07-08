# Docker Development Databases

## Dependencies
- Docker
- Docker Compose

# Configuration
In project path's, make this command:

`cp docker-compose.yml.tpl docker-compose.yml`

Choice the path that you made clone the projet, and set it in the volume `docker-compose.yml`
For example:
```
    volumes:
      - './data/postgres:/var/lib/postgresql/data/pgdata'
      - '~/fabio_soares:/app/fabio_soares'
```

# Alias

```bash
alias dc="docker-compose"
alias dce="dc exec"
alias dcu="dc -f /path/docker-dev-databases/docker-compose.yml up -d"
alias dcs1="docker stop docker-dev-databases_postgres_1"
alias dcs2="docker stop docker-dev-databases_mysql_1"
alias dcd="dc down"
alias dclogs="dc logs"
alias dcls="docker container ls -a"
alias bash_psql="cd /path/docker-dev-databases && dce postgres sh"
alias bash_mysql="cd /path/docker-dev-databases && dce mysql sh"
alias dcd="dc down"
alias dclogs="dc logs"

```
## Making restore database
First, move the dump for you path that you choice in innitial configuration.
```
  bash_psql -c 'psql -U postgres -d database < /app/your_path/docker-dev-databases/data/postgres/ database.psql'
  bash_mysql -c 'mysql -uroot -d database < /app/your_path/docker-dev-databases/data/mysql/database.sql'
```

Examples (for mysql change the command to bash_mysql and set command restore in mysql):
```
  mv ~/Documents/database.psq ~/fabio_soares/docker-dev-databases/data/postgres/
  bash_psql -c 'psql -U postgres -d database < /app/fabio_soares/docker-dev-databases/data/postgres/ database.psql'
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
