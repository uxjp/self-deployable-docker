#!/bin/bash

source ./.env

docker run -v /var/run/docker.sock:/var/run/docker.sock hestia -- run -d -p 8025:8091 --add-host=$GSOLAD_HOST_NAME -e BASE_USERNAME=$BASE_USERNAME -e BASE_PASSWORD=$BASE_PASSWORD -e HOST_BASE=$HOST_BASE --name GSOLAD registry.gitlab.com/softsite/geosales/gsolad:2023.10.25
