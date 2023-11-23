#!/bin/bash

source ./.env

#docker run -v /var/run/docker.sock:/var/run/docker.sock hestia -- run hello-world

#docker run -v /var/run/docker.sock:/var/run/docker.sock hestia -- run -p 8091:8091 --add-host=pumyra:10.0.0.82 -e BASE_USERNAME=$BASE_USERNAME -e BASE_PASSWORD=$BASE_PASSWORD -e HOST_BASE=$HOST_BASE -c "hello.sh" registry.gitlab.com/softsite/geosales/gsolad:2023.10.25


docker run -v /var/run/docker.sock:/var/run/docker.sock hestia -- run -p 8091:8091 --add-host=pumyra:10.0.0.82 -e BASE_USERNAME=$BASE_USERNAME -e BASE_PASSWORD=$BASE_PASSWORD -e HOST_BASE=$HOST_BASE registry.gitlab.com/softsite/geosales/gsolad:2023.10.25
