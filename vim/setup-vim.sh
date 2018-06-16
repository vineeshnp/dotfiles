if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc-backup
fi
cp ./.vimrc ~/
