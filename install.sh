#!/usr/bin/env bash


declare -a FILES_TO_SYMLINK=(
  '.bash_aliases'
  '.bashrc'
  '.gitconfig'
  '.oh-my-zsh'
  '.zshrc'
  '.jetbrains'
)

for i in ${FILES_TO_SYMLINK[@]}; do
    sourceFile="$(pwd)/$i"
    targetFile="$HOME/$i"

    ln -fs $sourceFile $targetFile 
  done
