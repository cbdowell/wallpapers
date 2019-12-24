# starship ###################

set -xg SPACESHIP_PACKAGE_SHOW       false
set -xg SPACESHIP_NODE_SHOW          false
set -xg SPACESHIP_GIT_STATUS_STASHED ''

eval (starship init fish)
