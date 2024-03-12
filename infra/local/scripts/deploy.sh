#!/usr/bin/env bash

compose="docker compose"

get_git_branch() {
    echo "$(git symbolic-ref --short -q HEAD 2>/dev/null)"
}

#envFileCount=$(ls -1 .env 2>/dev/null | wc -l)
#if [[ $envFileCount != 0 ]]; then
#    compose="$compose --env-file=./.env"
#fi

#if [[ $1 = "test" ]]; then
#    compose="$compose -f docker-compose-test.yml"
#
#    branch="$(get_git_branch)"
#    cmd="git pull origin $branch"
#    eval "${cmd}"
#
#    if ! docker network inspect paperless-test-network &>/dev/null; then
#        echo "Creating network: paperless-test-network"
#        docker network create paperless-test-network
#    else
#        echo "Network paperless-test-network already exists, skipping creation."
#    fi
#else
#    if ! docker network inspect paperless-local-network &>/dev/null; then
#        echo "Creating network: paperless-local-network"
#        docker network create paperless-local-network
#    else
#        echo "Network paperless-local-network already exists, skipping creation."
#    fi
#fi
#
#service=""
#if [[ -n $2 ]] && [[ ! $2 = "all" ]]; then
#    service="$2"
#fi
#
#eval "$compose up -d $service"
