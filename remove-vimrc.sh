#!/bin/sh

echo "Remove $HOME/.vimrc ..."
rm -rf $HOME/.vimrc

echo "Remove $HOME/.vim to $HOME/vim.bak ..."
mv $HOME/.vim $HOME/vim.bak
