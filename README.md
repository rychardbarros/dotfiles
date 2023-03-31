# dotfiles

Installation of dependencies:

neovim -> ir ate ~/.config/nvim/lua/packer-config/init.lua executar o comando :PackerSync, depois e so sair e ser feliz

zsh -> opicional (extensoes) (altamente recomendavel): 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

    -> apos instalar as extensoes nao esqueca de adicionar o nome do tema em ZSH_THEME = "spaceship"e das extensoes em  plugins (zsh-autosuggestions fast-syntax-highlighting) no arquivo .zshrc


docker -> adicionar a docker no $PATCH caso ele nao tenha vindo por padrao, para checar so executar docker ps se o comando executar sem problemas e pq deu tudo certo e nao precisa executar os comandos abaixo

    -> sudo groupadd docker

    -> sudo usermod -aG docker $SEU_NOME_DE_USUARIO

    -> newgrp docker

