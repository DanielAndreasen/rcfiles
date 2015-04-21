all:
	cp .vimrc ~/.vimrc
	cp -r .vim/startup ~/.vim/startup
	cp .latexmkrc ~/.latexmkrc
	cp .zshrc ~/.zshrc
	cp .gitconfig ~/.gitconfig
	cp .tmux.conf ~/.tmux.conf
	cp .tmux-powerlinerc ~/.tmux-powerlinerc
	cp -r tmux ~/scripts/tmux
	source ~/.zshrc
