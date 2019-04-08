echo "\033[31mInitializing .vimrc, .emacs, plugins..."
echo "."
### PLUGINS ###
cp -n ./vim/auto-pairs.vim ~/auto-pairs.vim
cp -n ./emacs/header.el ~/header.el
echo "."
### .vimrc & .emacs BACKUP & INSTALL ###
cp ~/.vimrc ~/.vimrc-backup 2>/dev/null
cp ~/.emacs ~/.emacs-backup 2>/dev/null
cp ./vim/.vimrc ~/.vimrc
cp ./emacs/.myemacs ~/.emacs
echo "."
echo "\033[92mDone! \033[100mReady for evaluation"
