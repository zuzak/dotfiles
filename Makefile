install: update install-vim install-git install-bash

update:
	git pull
	git submodule init
	git submodule update

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-zsh:
	rm -f ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -s `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -s `pwd`/zsh/zshrc ~/.zshrc

install-bash:
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc

install-mplayer:
	rm -rf ~/.mplayer
	ln -s `pwd`/mplayer ~/.mplayer
