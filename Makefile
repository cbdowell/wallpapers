export PATH   := ${HOME}/.local/bin:${HOME}/.node_modules/bin:${HOME}/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/core_perl:${HOME}/bin:${HOME}/google-cloud-sdk/bin
export GOPATH := ${HOME}

.DEFAULT_GOAL := help

install:
	RCRC=${HOME}/rcrc rcup -v -f

update:
	rcup -v
	# rcup -d ${HOME}/dotfiles -f \
	# 	-x README.md \
	# 	-x config \
	# 	-x fonts  \
	# 	-x gnupg  \
	# 	-x local  \
	# 	-x mozilla  \
	# 	-x ssh \
	# 	-x startpage \
	# 	-x unused \
	# 	-x vscode \
	# 	-x .editorconfig \
	# 	-x Makefile \
	# 	-x r

init:
	# git submodule update --init
	# git submodule foreach git pull origin master

rclone: ## Init rclone
	sudo pacman -S rclone
	chmod 600 ${PWD}/config/rclone/rclone.conf
	test -L ${HOME}/.config/rclone || rm -rf ${HOME}/.config/rclone
	ln -vsfn ${PWD}/config/rclone ${HOME}/.config/rclone

gnupg: ## Deploy gnupg (Run after rclone)
	sudo pacman -S git-crypt gnupg
	mkdir -p ${HOME}/.gnupg
	ln -vsf ${PWD}/gnupg/gpg-agent.conf ${HOME}/.gnupg/gpg-agent.conf

ssh: ## Init ssh
	sudo pacman -S openssh
	mkdir -p ${HOME}/.ssh
	ln -vsf ${PWD}/ssh/config ${HOME}/.ssh/config
	ln -vsf ${PWD}/ssh/known_hosts ${HOME}/.ssh/known_hosts
	chmod 600 ${HOME}/.ssh/id_rsa

wpgtk: ## installs wpgtk
	mkdir -p ${HOME}/.config/{wal,wpg}/templates
	rm -rf ${HOME}/.config/wpg/wpg.conf
	sudo -u ${USER} stow -S wpgtk

compton: ## installs compton
	rm -rf ${HOME}/.config/compton
	mkdir -p ${HOME}/.config/compton
	sudo -u ${USER} stow -S compton

conky: ## installs conky
	rm -rf ${HOME}/.config/conky
	mkdir -p ${HOME}/.config/conky
	sudo -u ${USER} stow -S conky

dunst: wpgtk ## installs dunst
	rm -rf ${HOME}/.config/dunst
	mkdir -p ${HOME}/.config/dunst
	rm -rf ${HOME}/.config/wpg/templates/dunstrc*
	ln -vsf ${PWD}/dunst/.config/dunst/dunstrc ${PWD}/dunst/.config/wpg/templates/dunstrc
	sudo -u ${USER} stow -S dunst

fonts: ## installs fonts
	rm -rf ${HOME}/.fonts
	mkdir -p ${HOME}/.fonts
	sudo -u ${USER} stow -S fonts

gtk: ## installs gtk
	rm -rf ${HOME}/.gtkrc-2.0
	rm -rf ${HOME}/.config/gtk*
	mkdir -p ${HOME}/.config/{gtk-2.0,gtk-3.0}
	sudo -u ${USER} stow -S gtk

i3: wpgtk ## installs i3
	rm -rf ${HOME}/.config/i3
	mkdir -p ${HOME}/.config/i3
	rm -rf ${HOME}/.config/wpg/templates/i3*
	ln -vsf ${PWD}/i3/.config/i3/config ${PWD}/i3/.config/wpg/templates/i3
	sudo -u ${USER} stow -S i3

icons: wpgtk ## installs icons
	rm -rf ${HOME}/.icons
	mkdir -p ${HOME}/.icons
	rm -rf ${HOME}/.config/wpg/templates/icons*
	ln -vsf ${PWD}/icons/.icons/flattrcolor/scripts/replace_folder_file.sh ${PWD}/icons/.config/wpg/templates/icons
	sudo -u ${USER} stow -S icons

polybar: wpgtk ## installs polybar
	rm -rf ${HOME}/.config/polybar
	mkdir -p ${HOME}/.config/polybar
	rm -rf ${HOME}/.config/wpg/templates/polybar*
	ln -vsf ${PWD}/polybar/.config/polybar/config ${PWD}/polybar/.config/wpg/templates/polybar
	sudo -u ${USER} stow -S polybar

rofi: wpgtk ## installs rofi
	rm -rf ${HOME}/.config/rofi
	mkdir -p ${HOME}/.config/rofi
	rm -rf ${HOME}/.config/wal/templates/colors-rofi.rasi
	sudo -u ${USER} stow -S rofi

scripts: ## installs scripts
	mkdir -p ${HOME}/.local/bin
	sudo -u ${USER} stow -R scripts

termite: wpgtk ## installs termite
	rm -rf ${HOME}/.config/termite
	mkdir -p ${HOME}/.config/termite
	sudo -u ${USER} stow -S termite

themes: wpgtk ## installs themes
	rm -rf ${HOME}/.themes
	mkdir -p ${HOME}/.themes
	rm -rf ${HOME}/.config/wpg/templates/gtk*
	ln -vsf ${PWD}/themes/.themes/FlatColor/gtk-2.0/gtkrc ${PWD}/themes/.config/wpg/templates/gtk2
	ln -vsf ${PWD}/themes/.themes/FlatColor/gtk-3.0/gtk.css ${PWD}/themes/.config/wpg/templates/gtk3
	ln -vsf ${PWD}/themes/.themes/FlatColor/gtk-3.20/gtk.css ${PWD}/themes/.config/wpg/templates/gtk3.2
	sudo -u ${USER} stow -S themes

pipinstall: ## Install python packages
	mkdir -p ${HOME}/.local
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python ${PWD}/get-pip.py --user
	pip install --user --upgrade pip
	pip install --user ansible
	pip install --user ansible-lint
	pip install --user autopep8
	pip install --user black
	pip install --user cheat
	pip install --user django
	pip install --user faker
	pip install --user flake8
	pip install --user gif-for-cli
	pip install --user graph-cli
	pip install --user httpie
	pip install --user importmagic
	pip install --user ipywidgets
	pip install --user jedi
	pip install --user jupyter
	pip install --user jupyterlab
	pip install --user jupyterthemes
	pip install --user litecli
	pip install --user matplotlib
	pip install --user neovim
	pip install --user nose
	pip install --user pandas
	pip install --user pipenv
	pip install --user progressbar2
	pip install --user psycopg2-binary
	pip install --user py-spy
	pip install --user pydoc_utils
	pip install --user pyflakes
	pip install --user pylint
	pip install --user python-language-server
	pip install --user redis
	pip install --user requests_mock
	pip install --user rope
	pip install --user rtv
	pip install --user scipy
	pip install --user scrapy
	pip install --user seaborn
	pip install --user streamlink
	pip install --user tldr
	pip install --user trash-cli
	pip install --user truffleHog
	pip install --user pywal
	pip install --user wpgtk
	pip install --user virtualfish
	pip install --user yapf
	rm -fr get-pip.py

.PHONY: wpgtk compton conky dunst fonts gtk i3 icons polybar rofi scripts termite themes wallpapers help

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
