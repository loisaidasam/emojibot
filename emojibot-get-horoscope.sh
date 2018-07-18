#!/bin/bash

# Print everyone's horoscopes

# Get current directory, even through symlinks
# via https://stackoverflow.com/a/246128/1406873
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

today=$(date "+%A %d %B")
echo "Emoji horoscope for $today:"

for user in "bbilko" "jeremy" "sam2" "tsidell"
do
	emoji="$($DIR/emojibot-get-emoji.sh)"
	echo "@$user: $emoji"
done

