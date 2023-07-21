#!/bin/bash

echo "Digite o URL desejado:"
read url
wget "$url"
#Primeira  parte do script - Pede para o usuário digitar uma URL e baixa o index da página

grep href index.html | grep "\." | cut -d '"' -f 4 | grep https | grep -v "wp" | cut -d "/" -f 3 > lista

for url in $(cat lista);do host $url;done
