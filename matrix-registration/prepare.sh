#!/bin/bash

# Pull & Tag the release
docker pull zeratax/matrix-registration:v0.9.1
docker tag zeratax/matrix-registration:v0.9.1 matrix-registration:latest
