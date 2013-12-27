#!/bin/bash

result=`ps aux | grep -v grep | grep -v $0 | grep "$1 $2"`

if [ -z "$result" ]; then
   `dirname $0`/$@
fi
