#!/bin/bash
function docker_alias() {
    docker run -it --rm \
        -v $(pwd):$1 -w $1 \
        -p 3000:3000 \
        -p 8080:8080 \
        -p 8000:8000 \
        -p 80:80 \
        ${@:2}
}


# JavaScript / CoffeeScript
alias node="docker_alias /directory node node"
alias npm="docker_alias /directory node npm"
alias coffee="docker_alias /directory shouldbee/coffeescript coffee"

# PHP
alias php="docker_alias /directory php php"

# Python
alias python2.7="docker_alias /directory python:2.7 python"
alias python="docker_alias /directory python python"
alias django-admin.py="docker_alias /directory django django-admin.py"

# Redis
alias redis-cli="docker_alias /directory redis redis-cli"
alias redis-server="docker_alias /directory redis redis-server"

alias redis-benchmark="docker_alias /directory redis redis-benchmark"
alias redis-check-dump="docker_alias /directory redis redis-check-dump"
alias redis-check-aof="docker_alias /directory redis redis-check-aof"
alias redis-sentinel="docker_alias /directory redis redis-sentinel"

# MongoDB
# alias mongo="docker_alias /directory mongo mongo"

# Postgres
alias postgres="docker_alias /directory postgres postgres"
alias psql="docker_alias /directory postgres psql"

alias pg_dump="docker_alias /directory postgres pg_dump"
alias pg_dumpall="docker_alias /directory postgres pg_dumpall"
alias pg_restore="docker_alias /directory postgres pg_restore"

# Nginx
alias nginx="docker_alias /usr/share/nginx/html nginx nginx"
