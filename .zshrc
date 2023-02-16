# Linux antigen file
source ~/antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
antigen theme romkatv/powerlevel10k

# env vars
export NVM_AUTO_USE=true
export PIPENV_VENV_IN_PROJECT=1

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle colorize
antigen bundle pip
antigen bundle python
antigen bundle colored-man-pages
antigen bundle debian
antigen bundle npm
antigen bundle aws
antigen bundle rbenv

# third party plugins
antigen bundle ecortinas/zsh-rbenv@main
antigen bundle mattberther/zsh-pyenv
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle CDA0/zsh-tfenv
antigen bundle lukechilds/zsh-nvm
antigen bundle CDA0/zsh-goenv


