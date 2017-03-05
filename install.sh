#!/usr/bin/env bash

FILE=~/.zshrc
SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
if [ -f $FILE ]; then
   echo "Backing up existing $FILE to $FILE.~1"
   mv $FILE $FILE.~1
fi

cp -R $SCRIPT_DIR/files ~/.dotfiles/
cp $SCRIPT_DIR/.zshrc $FILE

exec /bin/zsh

exit 0
