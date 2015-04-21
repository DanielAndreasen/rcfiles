all:
	cp .vimrc ~/.vimrc
	cp -r .vim/startup ~/.vim/startup
	cp .latexmkrc ~/.latexmkrc
	cp .zshrc ~/.zshrc
	cp .gitconfig ~/.gitconfig
	source ~/.zshrc
