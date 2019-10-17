#!/bin/sh

shopt -s expand_aliases
source ~/.zsh_aliases
sql-local -B -N -e "SELECT e_mail FROM profile WHERE id = $1"

