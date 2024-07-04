#!/bin/bash

# Copiar o arquivo de chave privada para o diretório home
cp /mnt/d/PROGRAMMER/iac-aula1/iac-alanoregon.pem ~/iac-alanoregon.pem

# Ajustar as permissões do arquivo
chmod 600 ~/iac-alanoregon.pem

# Executar o playbook Ansible
ansible-playbook /mnt/d/PROGRAMMER/iac-aula1/playbook.yml -u ubuntu --private-key ~/iac-alanoregon.pem -i /mnt/d/PROGRAMMER/iac-aula1/hosts.yml
