#TMUX & TMATE
if status is-interactive
and not set -q TMUX
#exec tmate
  exec tmate
end

# alias docker-compose & docker
alias dcup='docker-compose up'
alias dcrun='docker-compose run --rm app'
alias dclogs='docker-compose logs'
alias dcbuild='docker-compose build'
alias nvimc='nvim ~/.config/nvim/init.vim'

# alias List
alias l='la'

# alias python server
alias pyserver='python -m SimpleHTTPServer'

# Android-studio/React-Native | SDK
set --export ANDROID_HOME $HOME/Android/Sdk
set -Ux PATH $ANDROID_HOME/tools $PATH
set -Ux PATH $ANDROID_HOME/tools/bin $PATH
set -Ux PATH $ANDROID_HOME/platform-tools $PATH
set -Ux PATH $ANDROID_HOME/emulator $PATH
