#!/bin/zsh


install_neovim() {
  cd ~/Downloads
  echo "Baixando o Neovim..."
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

  echo "Removendo instalações anteriores..."
  sudo rm -rf /opt/nvim && sudo rm -rf /opt/nvim-linux64
  sudo rm -rf ~/.config/nvim
 
  echo "Extraindo Neovim..."
  tar -C  /opt -xzf ~/Downloads/nvim-linux64.tar.gz


  echo "Limpando arquivos temporários..."
  rm ~/Downloads/nvim-linux64.tar.gz

}

install_font_firecode() {
  cd ~/Downloads/
  echo 'Baixando FiraCode by Nerd Fonts'
  curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip

  echo 'Extraindo font Fira Code Nerd Font'
  unzip ~/Downloads/FiraCode.zip -d ~/Downloads/FiraCode

  echo 'Organizando fontes'
  sudo mv ~/Downloads/FiraCode /usr/share/fonts/truetype/

  echo 'Ajustando permissões...'
  sudo chmod 644 /usr/share/fonts/truetype/FiraCode/*

  echo 'Sincronizando fontes'
  fc-cache -fv

  echo 'Preparando fonte para uso'
  FONT = 'FiraCode Nerd Font'

  echo 'Localizando perfil de usuário'
  DEFAULT_PROFILE_TERM = $(gsettings get org.gnome.Terminal.ProfileList default)

  echo 'Filtrando perfil'
  DEFAULT_PROFILE=${DEFAULT_PROFILE//\'/}
  
  echo 'Desativando fontes do sistema para o terminal padrão'
  gsettings set \
  "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${DEFAULT_PROFILE}/" \
  use-system-font false
  
  echo 'Aplicando fonte ao perfil padrão do terminal'
  gsettings set \
  "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${DEFAULT_PROFILE}/" \
  font "${FONT}"

  echo 'Instalação de fontes concluída sucesso!'
}

configure_zsh() {
  
  echo "Configurando o PATH no ~/.zshrc..."

  if ! grep -q '/opt/nvim-linux64/bin' ~/.zshrc; then
    echo 'export PATH=$PATH:/opt/nvim-linux64/bin' >> ~/.zshrc
    echo 'PATH atualizado no  ~/.zshrc'
  else 
    echo "O PATH já está configurado no ~/.zshrc"
  fi

  echo "Baixando configurações via github..."
  cd ~/.config/
  git clone https://github.com/JhonathanWeber/nvim.git

  echo "Aplicando configurações"

  source ~/.zshrc

}

configure_bash() {
  echo "Configurando o PATH no  ~/.bashrc"
  if  ! grep -q '/opt/nvim-linux64/bin' ~/.bashrc; then
    echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc
    echo 'PATH atualizado no ~/.bashrc.'
  else 
    echo 'O PATH já está configurado no ~/.bashrc'
  fi

  echo "Baixando configurações via github..."
  cd ~/.config/
  git clone https://github.com/JhonathanWeber/nvim.git
  
  echo "Aplicando configurações"

  source ~/.bashrc
  
}



if [[ $SHELL == */bash ]]; then
  echo "Shell detectado: Bash"
  install_neovim
  configure_bash

elif [[ $SHELL == */zsh ]]; then
  echo "Shell detectado: Zsh"
  install_neovim
  configure_zsh
else 
  echo "Shell não suportado. Este script suporta apenas o Bash e Zsh."
  exit 1
fi

echo "Instalação do nvim foi concluída."




