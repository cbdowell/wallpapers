#!/bin/sh

# wpg-install-icons.sh -ig

# if [ -n "${XDG_CONFIG_HOME}" ]; then
#   CONFIG="${XDG_CONFIG_HOME}"
# else
#   CONFIG="${HOME}/.config"
# fi

# if [ -n "${XDG_DATA_HOME}" ]; then
#   LOCAL="${XDG_DATA_HOME}"
# else
#   LOCAL="${HOME}/.local/share"
# fi

# THEMES_DIR="${HOME}/.themes";
# SRC_DIR="${PWD}/wpgtk-templates";
# TEMPLATE_DIR="${CONFIG}/wpg/templates";

# install_i3() {
#     echo "Installing i3 config";
#     cp --remove-destination "${CONFIG}/i3/config.base" "${TEMPLATE_DIR}/i3.base" && \
#         ln -sf "${CONFIG}/i3/config" "${TEMPLATE_DIR}/i3" && \
#         echo ":: i3 template install done."
# }

# install_polybar() {
#     echo "Installing polybar config";
#     cp --remove-destination "${CONFIG}/polybar/config.base" "${TEMPLATE_DIR}/polybar.base" && \
#         ln -sf "${CONFIG}/polybar/config" "${TEMPLATE_DIR}/polybar" && \
#         echo ":: polybar template install done."
# }

# install_dunst() {
#     echo "Installing dunst config";
#     cp --remove-destination "${CONFIG}/dunst/dunstrc.base" "${TEMPLATE_DIR}/dunstrc.base" && \
#         ln -sf "${CONFIG}/dunst/dunstrc" "${TEMPLATE_DIR}/dunstrc" && \
#         echo ":: dunst template install done."
# }


# install_dunst() {
#     echo "Installing dunst config";
#     cp --remove-destination "${CONFIG}/dunst/dunstrc.base" "${TEMPLATE_DIR}/dunstrc.base" && \
#         ln -sf "${CONFIG}/dunst/dunstrc" "${TEMPLATE_DIR}/dunstrc" && \
#         echo ":: dunst template install done."
# }

# install_termite() {
#     echo "Installing termite config";
#     cp --remove-destination "${CONFIG}/termite/config.base" "${TEMPLATE_DIR}/termite.base" && \
#         ln -sf "${CONFIG}/termite/config" "${TEMPLATE_DIR}/termite" && \
#         echo ":: termite template install done."
# }


# install_tilix() {
#     echo "Installing tilix config";
#     cp --remove-destination "${CONFIG}/tilix/schemes/wpgtk.json.base" "${TEMPLATE_DIR}/tilix.base" && \
#         ln -sf "${CONFIG}/tilix/schemes/wpgtk.json" "${TEMPLATE_DIR}/tilix" && \
#         echo ":: tilix template install done."
# }

# install_i3
# install_polybar
# install_dunst
# install_termite

