#!/bin/sh

BRANCH="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
if [ $BRANCH ]; then
  echo "\033[0;37m git@\033[22;33m${BRANCH}\033[0;37m"
fi

