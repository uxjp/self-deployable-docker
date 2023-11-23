#!/bin/bash

source ./app/.env

docker login $PRIVATE_REGISTRY -u $LOGIN -p $PASSWORD
