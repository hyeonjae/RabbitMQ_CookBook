#!/bin/bash

if [ $# -eq 0 ]; then
  echo "need to commit message";
  exit
fi;


git add .
if [ $? -ne 0 ]; then
  echo "git add fail";
  exit
fi;


git commit -m "$1"
if [ $? -ne 0 ]; then
  echo "git commit fail";
  exit
fi;


git push
if [ $? -ne 0 ]; then
  echo "git push fail";
  exit
fi;
