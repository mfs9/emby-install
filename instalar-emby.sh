##SCRIPT PARA INSTALAR O EMBY
##AUTOR: MFS9 - github.com/mfs9
##Certifique-se de que o script tenha permissões de execução (chmod +x nome_do_arquivo) para poder ser executado.



#!/bin/bash

# Adiciona o repositório do Emby
wget -O - https://github.com/MediaBrowser/Emby.Releases/raw/master/installers/ubuntu/emby-server-deb_4.6.4.0_amd64.deb | sudo dpkg -i -

# Instala as dependências necessárias
sudo apt-get install -f -y

# Inicia o serviço do Emby
sudo systemctl start emby-server

# Habilita o serviço para iniciar automaticamente na inicialização do sistema
sudo systemctl enable emby-server

# Finaliza a instalação
echo "A instalação do Emby está concluída!"
