#!/bin/sh

e_dir_list="mozilla ssh thunderbird emacs.d"
dot_list="local bashrc config emacs gitconfig gitignore msmtprc muttrc slrnrc Xdefaults Xresources xfce4 pam_environment"

for d in $e_dir_list; do
  mkdir -p "$AFS_DIR/.confs/$d"
done

for f in $e_dir_list $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$AFS_DIR/.confs/$f" "$HOME/.$f"
done

"$SHELL" ~/afs/.confs/dotfiles/install.sh
