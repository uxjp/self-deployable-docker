#!/bin/bash

source ./app/.env

docker login registry.gitlab.com -u $LOGIN -p $PASSWORD
