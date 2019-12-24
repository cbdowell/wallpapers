
# Set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG   en_US.UTF-8
set -gx LANGUAGE en_US.UTF-8

set -gx BROWSER firefox
set -gx EDITOR  nvim
set -gx VISUAL  nvim
set -gx PAGER    "most -s"
set -gx MANPAGER "most -s"



set -xg LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

set -xg TERM     "xterm-256color"
# set -gx MANPAGER "less -X"

set -gx FZF_DEFAULT_COMMAND 'ag -g ""'
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

set -Ux SHELL         $__fish_bin_dir/fish
set -gx GH_BASE_DIR   ~/.ghq
set -gx GHQ_ROOT      ~/.ghq
set -gx PROJECT_PATHS ~/.ghq
set -gx PYENV_ROOT    ~/.asdf/plugins/python/pyenv
set -U  USER_GPG_ID   "F90F203F56B69F7E061953707539257A72DDC56E"

set -U  keychain_init_args --quiet --confhost --timeout 60 --agents ssh,gpg

if command -sq fzf
    # Utilities
    set -l dirpreview "--preview 'tree --dirsfirst -C {} | head -200'"

    # FZF Config
    set -gx FZF_DEFAULT_OPTS "--height 40% --reverse --border --multi --cycle --inline-info"

    # Options for history mode
    set -gx FZF_CTRL_R_OPTS "--no-multi --prompt='history> ' --preview 'echo {}' --preview-window='down:3:wrap'"

    # Options for CD mode
    set -gx FZF_ALT_C_OPTS "--no-multi --select-1 --exit-0 --prompt='cd> ' $dirpreview"

    # Options for file mode
    set -gx FZF_CTRL_T_OPTS "--prompt='file> ' --select-1 --exit-0 --preview 'if test -e {}; begin; highlight -O ansi -l {} ^/dev/null; or cat {}; or tree --dirsfirst -C {}; end ^/dev/null | head -200;end'"

    # Options for Z mode
    set -gx FZF_Z_OPTS $dirpreview
end

# ripgrep config
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc
