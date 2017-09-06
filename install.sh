#!/bin/sh

e_dir_list="mozilla ssh"
dot_list="bashrc config emacs gitconfig gitignore mozilla msmtprc muttrc slrnrc ssh Xdefaults Xresources xfce4"

for d in $e_dir_list; do
  mkdir -p "$AFS_DIR/.confs/$d"
done

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done
