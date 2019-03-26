set -eu

DOT_DIRECTORY="$HOME/dotfiles"
cd $DOT_DIRECTORY

for f in .??*
do
    [ "$f" = ".git" ] && continue
    ln -siv $DOT_DIRECTORY/$f $HOME/$f
done
