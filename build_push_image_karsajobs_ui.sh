#!/bin/bash

# Build Docker image untuk backend
docker build -t chanddr/karsajobs-ui:latest .

#Login ke GitHub Packages
echo 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 | docker login docker.pkg.github.com -u Chanddr --password-stdin

#Mengunggah image ke GitHub Packages (GitHub Container Registry)
docker push ghcr.io/chanddr/docker-publish-dicoding/kersajobs:latest
