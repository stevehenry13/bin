#!/bin/bash

ln -sf ~/bin/git_hooks/post-checkout .git/hooks/post-checkout
ln -sf ~/bin/git_hooks/post-merge .git/hooks/post-merge
ln -sf ~/bin/git_hooks/post-rewrite .git/hooks/post-rewrite
ln -sf ~/bin/git_hooks/prepare-commit-msg .git/hooks/prepare-commit-msg

if [ -f script/pre-commit.sh ]; then
  ln -sf ../../script/pre-commit.sh .git/hooks/pre-push
fi

rm .git/hooks/*.sample
