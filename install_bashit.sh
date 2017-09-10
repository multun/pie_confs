mkdir -p "$AFS_DIR"/tools
cd "$AFS_DIR"/tools
git clone https://github.com/Bash-it/bash-it

cat << EOF >> ~/afs/.confs/bashrc
export BASH_IT=~/afs/tools/bash-it/
export BASH_IT_THEME=minimal
. ~/afs/tools/bash-it/bash_it.sh
EOF

bash  -c '. ~/afs/tools/bash-it/bash_it.sh && bash-it enable plugin base'
