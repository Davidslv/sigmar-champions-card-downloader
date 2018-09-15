#!/usr/bin/env bash

file=$1

if [ ! -d "card-images" ]; then
  mkdir card-images
fi

cd card-images

while read -r line; do
  curl -O "$line"
done < $file

rename 's/%20/_/g' *.jpg

cd -
