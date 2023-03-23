#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim -y
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/Owar1/dotfiles.git

cd dotfiles/
cp -r nvim ~/.config/
cd
sudo apt install kitty -y

cd ~/.config
echo "##################################
############# FONTS ##############
##################################

font_family      		FiraCode Nerd Font
italic_font      		auto
bold_font        		auto
bold_italic_font 		auto

font_size        		11.5

foreground       		#FFFFFF
background 	 		#242424

selection_foreground 		#000000
selection_background		#dddddd

adjust_line_height  		110%

##################################
############# CURSOR #############
##################################

cursor				#FFFFFF
cursor_shape			beam
shell_integration		no-cursor
select_by_word_characters :	@-./_~?&=%+#
repaint_delay   		10
term xterm-kitty
open_url_with default
scrollback_lines 		10000
cursor_blink_interval     	0	


##################################
############# BORDER #############
##################################

window_border_width 		0
window_margin_width 		0
active_border_color 		#989cff
inactive_border_color 		#cccccc


##################################
############# COLORS #############
##################################

# black
color0   #2f2f2f
color8   #656565

# red
color1   #ff5555
color9   #ff5555

# green
color2    #50fa7b
color10   #50fa7b

# yellow
color3    #f1fa8c
color11   #f1fa8c

# blue
color4   #198cff
color12  #198cff

# purple
color5   #bd93f9
color13  #bd93f9

# cyan
color6   #8be9fd
color14  #8be9fd

# white
color7   #f5f7fa
color15  #f5f7fa


##################################
########## KEY BINDINGS ##########
##################################

map ctrl+v	 	        paste_from_clipboard
map ctrl+v	    	        paste_from_selection
map ctrl+c	   	        copy_to_clipboard
map ctrl+c			copy_to_selection

map ctrl+l			clear_log_notice

map shift+up        		scroll_line_up
map shift+down    	        scroll_line_down
map shift+page_up  		scroll_page_up
map shift+page_down 		scroll_page_down
map ctrl+shift+home      	scroll_home
map ctrl+shift+end       	scroll_end

map ctrl+p	         	increase_font_size
map ctrl+o	         	decrease_font_size" >> kitty.conf

cd
sudo apt install zsh -y
echo -n "precione qualquer tecla para instalr o oh-my-zsh e suas extensoes"
read TECLA
chsh -s /bin/zsh
zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo groupadd docker
echo -n "digite o nome do seu usuario, oque aparece depois do /area de trabalho ou /home"
read USUARIO

sudo usermod -aG docker $USUARIO

newgrp docker

echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

sudo apt update
sudo apt-get install insomnia