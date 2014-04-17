#!/bin/zsh
#

cd $HOME/projects/cubetree
git checkout master
git svn rebase
git push origin master
