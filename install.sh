#!/bin/bash

cd $HOME
rm .vimrc .tmux.conf
ln -s $HOME/vimrc/.vimrc .vimrc
ln -s $HOME/vimrc/.tmux.conf .tmux.conf
