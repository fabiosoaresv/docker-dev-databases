version: '2'

services:
  postgres:
    image: postgres:9.6.10
    volumes:
      - './data/postgres:/var/lib/postgresql/data/pgdata'
      - '~/autoseg:/app/autoseg'
    ports:
      - "5432:5432"
    restart: always
    environment:
      PGDATA: /var/lib/postgresql/data/pgdata

  mysql:
    image: mariadb:10.0.35
    volumes:
      - './data/mysql:/var/lib/mysql'
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: ""
      MYSQL_ALLOW_EMPTY_PASSWORD: "yes"

