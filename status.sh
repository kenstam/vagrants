#!/bin/bash

for folder in `ls -1|grep -v README.md|grep -v LICENSE|grep -v status.sh|grep -v grep`; do
  echo "================================================================="
  echo ${folder}
  cd ${folder}
  vagrant status
  echo
  cd ..
done
