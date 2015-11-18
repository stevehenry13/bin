#!/bin/bash

for gemset in $(ls $rvm_path/gems | grep @); do
  echo "Cleaning $gemset"
  rvm $gemset do gem cleanup
done
