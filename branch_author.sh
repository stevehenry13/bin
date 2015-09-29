#!/bin/bash

for branch in `git branch -r | grep -v -e release -e beta -e develop -e master | sed -n '1!p'`;do
  echo -e `git show --format="%an" $branch | head -n 1` \\t$branch
done | sort | column -ts $'\t'
