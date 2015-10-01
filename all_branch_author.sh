for dir in `ls`; do
  if [ -d $dir ]; then
    pushd $dir > /dev/null
    echo
    echo "$dir"
    branch_author.sh
    popd > /dev/null
  fi
done
