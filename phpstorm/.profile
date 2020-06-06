#!/bin/sh

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/Workspaces/TrackTik/TrackTikCloud/.bin

COLOR_BLK="\[\033[0;30m\]"
COLOR_RED="\[\033[0;31m\]"
COLOR_GRN="\[\033[0;32m\]"
COLOR_YLW="\[\033[0;33m\]"
COLOR_BLU="\[\033[0;34m\]"
COLOR_PUR="\[\033[0;35m\]"
COLOR_CYN="\[\033[0;36m\]"
COLOR_WHT="\[\033[0;37m\]"
COLOR_BRN="\[\033[22;33m\]"

PS1="$COLOR_GRN\t $COLOR_WHT\u$COLOR_BRN@$COLOR_CYN\h:$COLOR_BLU\w\$(profile_gitbranch)$COLOR_WHT: "

