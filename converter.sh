#!/bin/sh

# converter: convert images jpg to png, accordly with parameter.

for imagem in $@; do
  file_name=$(basename $imagem)
  file_base="${file_name%.*}"
  path_name=${imagem%/*}
  echo -e "from: $file_base.jpg 
to:$file_base.png
================================
"
  convert ./$path_name/$file_base.jpg ./$path_name/$file_base.png
done
