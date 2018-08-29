#!/bin/sh

SSH=~/.ssh
UNLOCKED_PATH=$SSH/unlocked
UNLOCKED_KEYS=$SSH/locked.tar.bz2
LOCKED_KEYS=$UNLOCKED_KEYS.enc

if [ -e $UNLOCKED_PATH ]; then
  echo "Keys are already unlocked."
elif [ ! -e $LOCKED_KEYS ]; then
  echo "No locked keys found in $LOCKED_KEYS"
else

  mkdir -p $UNLOCKED_PATH
  openssl aes-256-cbc -d -a -salt -in $LOCKED_KEYS -out $UNLOCKED_KEYS
  tar -xjf $UNLOCKED_KEYS -C $UNLOCKED_PATH
  rm $UNLOCKED_KEYS

fi
