

test -e ~/.go; and set -gx GOPATH ~/.go

test -e ~/.go/bin; and set -gx PATH $PATH $GOPATH/bin


# asdf
test -e ~/.asdf/asdf.fish ; and source ~/.asdf/asdf.fish

# Direnv
test -e /usr/local/bin/direnv ; and eval (direnv hook fish)

# env_parallel for gnu parallel
test -e /usr/local/bin/env_parallel.fish ; and source (which env_parallel.fish)
