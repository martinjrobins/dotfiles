#!/bin/bash

cd $HOME
rm .vimrc .tmux.conf .muttrc
ln -s $HOME/vimrc/.vimrc .vimrc
ln -s $HOME/vimrc/.tmux.conf .tmux.conf
ln -s $HOME/vimrc/.muttrc .muttrc
ln -s $HOME/vimrc/mutt-colors-solarized-dark-256.muttrc mutt-colors-solarized-dark-256.muttrc
ln -s $HOME/vimrc/.Xresources .Xresources
