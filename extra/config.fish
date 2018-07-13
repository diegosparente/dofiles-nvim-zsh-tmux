if status is-interactive
and not set -q TMUX
    exec tmate
end

# alias docker-compose

alias dcup='docker-compose up'
alias dcrun='docker-compose run --rm app'
alias dclogs='docker-compose logs'
alias dcbuild='docker-compose build'

# alias List
alias l='la'
#funcsave dockerup
