#!/bin/bash

# Build Docker image untuk frontend
docker build -t karsajobs-ui:latest .

#Melihat daftar image di lokal
docker images

#Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui:latest ghcr.io/chanddr/docker-publish-karsajobs-ui/karsajobs-ui:latest

#Login ke GitHub Packages
echo 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 | docker login ghcr.io -u Chanddr --password-stdin

#Mengunggah image ke GitHub Packages (GitHub Container Registry)
docker push ghcr.io/chanddr/docker-publish-karsajobs-ui/karsajobs-ui:latest
