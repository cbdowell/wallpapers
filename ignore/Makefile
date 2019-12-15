export PATH   := ${HOME}/.local/bin:${HOME}/.node_modules/bin:${HOME}/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/core_perl:${HOME}/bin:${HOME}/google-cloud-sdk/bin
export GOPATH := ${HOME}

.DEFAULT_GOAL := help

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

.PHONY: wpgtk compton conky dunst fonts gtk i3 icons polybar rofi scripts termite themes wallpapers help
help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
