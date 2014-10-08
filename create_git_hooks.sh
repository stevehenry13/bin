#!/bin/bash

ln -sf ~/bin/git_hooks/post-checkout .git/hooks/post-checkout
ln -sf ~/bin/git_hooks/post-commit .git/hooks/post-commit
ln -sf ~/bin/git_hooks/post-merge .git/hooks/post-merge
ln -sf ~/bin/git_hooks/post-rewrite .git/hooks/post-rewrite

rm .git/hooks/*.sample
