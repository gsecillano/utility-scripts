#!/bin/zsh
#

cd $HOME/projects/github_sync
for d in `ls -1`
do
  pushd $d
  git checkout master
  git svn rebase
  git push -f origin master
  popd
done
