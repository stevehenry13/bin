#!/bin/bash

ln -sf ~/bin/git_hooks/post-checkout .git/hooks/post-checkout
ln -sf ~/bin/git_hooks/post-commit .git/hooks/post-commit
ln -sf ~/bin/git_hooks/post-merge .git/hooks/post-merge
ln -sf ~/bin/git_hooks/post-rewrite .git/hooks/post-rewrite

if [ -f script/pre-commit.sh ]; then
  ln -sf ../../script/pre-commit.sh .git/hooks/pre-commit
fi

rm .git/hooks/*.sample
