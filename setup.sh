#!/bin/sh

#############################################################
## WARNING: it'll remove .emacs, .spacemacs, .emacs.d/, .bashrc, .vimrc, .screenrc

# remove existing config files & folders
rm ~/.bashrc
rm ~/.screenrc
rm ~/.vimrc

# make soft link of config files
ln -sf ~/dev_setting/bashrc ~/.bashrc
ln -sf ~/dev_setting/screenrc ~/.screenrc
ln -sf ~/dev_setting/vimrc ~/.vimrc

# setup for git
git config --global core.editor vim
git config --global diff.external git_diff_vim
git config --global pager.diff ""

