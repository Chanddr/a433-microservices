#!/bin/bash

#Membuat Docker image dari Dockerfile dengan nama image "item-app" dan tag "v1"
docker build -t item-app:v1 .

#Melihat daftar image di lokal
docker images

#Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 docker.pkg.github.com/Chanddr/repository/item-app:v1

#Login ke GitHub Packages
echo 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 | docker login docker.pkg.github.com -u Chanddr --password-stdin

#Mengunggah image ke GitHub Packages (GitHub Container Registry)
docker push docker.pkg.github.com/Chanddr/repository/item-app:v1
