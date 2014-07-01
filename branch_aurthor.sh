#!/bin/bash

for branch in `git branch -r | grep feature`;do
       	echo -e `git show --format="%an" $branch | head -n 1` \\t$branch
done
