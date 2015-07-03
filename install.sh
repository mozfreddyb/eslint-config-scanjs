#!/bin/sh

REQUIRED=$(npm list 2>/dev/null | grep 'UNMET DEPENDENCY ' | sed 's/.*UNMET DEPENDENCY //g' | tr '[:space:]' ' ')

echo This will install $REQUIRED;
read -p "Proceed? [Y/n] " reply
choice=$(echo $reply|sed 's/\(.*\)/\L\1/') # lowercase
if [ "$choice" = 'n' ]
then
  echo "OK :-("
else
  npm install -g $REQUIRED
  cp -v .eslintrc ~/.scanjs-eslintrc  
fi