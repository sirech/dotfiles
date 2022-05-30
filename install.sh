# -*- mode: Shell-script-*-
#!/usr/bin/bash
#
export SHELL_DIR=${HOME}/dotfiles

chsh -s /bin/zsh

# Configuration for multiple programs
sh ${SHELL_DIR}/rc/install.sh

# SSH
if [ ! -h "${HOME}/.ssh/config" ] ; then
    ln -s ${SHELL_DIR}/ssh/config ${HOME}/.ssh/config
fi

# GPG
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg
if [ ! -h "${HOME}/.gnupg/gpg-agent.conf" ] ; then
    ln -s ${SHELL_DIR}/gpg/gpg-agent.conf ${HOME}/.gnupg
fi

# GIT
if [ ! -h "${HOME}/.gitconfig" ] ; then
  ln -s ${SHELL_DIR}/git/gitconfig ~/.gitconfig
fi

if [ ! -h "${HOME}/.gitignore" ] ; then
    ln -s ${SHELL_DIR}/git/gitignore ~/.gitignore
fi
