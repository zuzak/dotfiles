most: init update vim git bash
all: init update vim git bash zsh mplayer dwm

init:
	git pull
	git submodule init
	git submodule update
	git submodule
	git submodule init
	git submodule update

update:
	git fetch origin
	reslog=$(git log HEAD..origin/master --oneline)
	if [ "${reslog}" != "" ] ; then \
		git merge origin/master \
		git submodule foreach git pull ; \
	fi

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc

git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

zsh:
	rm -f ~/.zshrc
	rm -rf ~/.oh-my-zsh
	ln -s `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh
	ln -s `pwd`/zsh/zshrc ~/.zshrc

bash:
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc
	source ~/.bashrc

mplayer:
	rm -rf ~/.mplayer
	ln -s `pwd`/mplayer ~/.mplayer

dwm:
	rm -f ~/.xinitrc
	ln -s `pwd`/dwm/xinitrc ~/.xinitrc
