#!/bin/bash

# Choose an emoji from EMOJIS.txt at random

# Get current directory, even through symlinks
# via https://stackoverflow.com/a/246128/1406873
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

filename="$DIR/EMOJIS.txt"

# OSX:
#num=$(cat $filename | wc -l)
#line_num=$(jot -r 1 1 $num)
#echo $(sed -n "$line_num"p $filename)

# Linux:
shuf -n 1 $filename
