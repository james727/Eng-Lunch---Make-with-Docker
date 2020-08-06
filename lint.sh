#!/bin/bash
set -e

for file in $(find scripts -type f); 
  do shellcheck --format=gcc $file;
done;