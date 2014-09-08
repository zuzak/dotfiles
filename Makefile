install: update install-vim install-git install-bash install-mplayer install-dwm install-compose
basic: install-vim install-git install-bash

quick:
	git fetch origin
	reslog=$(git log HEAD..origin/master --oneline)
	if [ "${reslog}" != "" ] ; then \
		git merge origin/master \
		git submodule foreach git pull \
	else \
		exit 0; \
	fi

update:
	git pull
	git submodule foreach git pull

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

install-dwm:
	rm -f ~/.xinitrc
	ln -s `pwd`/dwm/xinitrc ~/.xinitrc
install-compose:
	rm -f ~/.XCompose
	ln -s `pwd`/compose/rfc1345/compose.pre ~/.XCompose
