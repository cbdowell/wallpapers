
# Interactive mode settings
# Specifically, anything you might not need in scripting should be put here.
if status --is-interactive
    # git
    abbr --add g "git"
    abbr --add gst "git status"
    abbr --add gcm "git commit -m"
    abbr --add gc "git checkout"
    abbr --add gcb "git checkout -b"
    abbr --add gu "hub sync"

    # Ruby
    abbr --add b "bundle"
    abbr --add bx "bundle exec"
    abbr --add rk "rake"
    abbr --add rb "ruby"
    abbr --add bxr "bundle exec rake"
end

# ghq
alias ghg 'ghq get'
alias ghl 'ghq list'
alias ghrm 'rm -rf (ghq list --full-path | fzf)'
alias ghcd 'cd (ghq list --full-path | fzf)'

# lazygit (Simple terminal UI for git commands)
alias lg 'lazygit'

# exa (Replacement for `ls` command)
alias exaf 'exa --long --all --group-directories-first --bytes --header --group --git'
alias exat 'exa --long --all --group-directories-first --bytes --header --group --git --tree --ignore-glob .git'

alias show_user_paths 'echo $fish_user_paths | tr " " "\n" | nl'
alias show_paths      'echo $PATHS | tr " " "\n" | nl'
alias b               'buku --suggest'
alias gkey            'ssh-keygen -C (whoami)@(hostname)-(date -I)'

# https://github.com/Phundrak/dotfiles
abbr purge  'yay -Sc'
abbr remove 'sudo pacman -Rscnd'
abbr p      'sudo -A pacman'
abbr search 'pacman -Ss'
abbr update 'sudo pacman -Syu'

# Alias zone
# Doesn't really reload, more of launches a new shell, but the results the same
alias reload 'exec fish -l'
# Git
# Hub is a useful tool that provides github integration. If you don't use it, I recommend deleting these lines
alias git hub

# Run something in the latest version of ruby
alias rbl "env ASDF_RUBY_VERSION=2.5.1"

# Disable overcommit
alias disoc "env OVERCOMMIT_DISABLE=1 "

alias rbldisoc "env OVERCOMMIT_DISABLE=1 ASDF_RUBY_VERSION=2.5.1 "

# Add editor override to use atom
alias atomedit "env EDITOR='atom -w' VISUAL='atom -w' "


# fasd
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fzf_z'          # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# Up
alias u='fzf_up'

# CDHist
alias cdh='fzf_cdhist'

alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

alias md 'mkdir -p'
alias cx 'chmod +x'
alias 'c-x' 'chmod -x'


alias json 'prettify-json'
alias map 'xargs -n1'
alias collapse "sed -e 's/  */ /g'"
alias cuts 'cut -d\ '

alias df 'df -m'
alias j jobs
alias l ls
alias ll 'ls -la'
alias ls 'ls -FG'
alias su 'su -m'

# https://github.com/nvie/dotfiles/blob/master/.config/fish/aliases.fish
