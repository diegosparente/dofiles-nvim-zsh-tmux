#TMUX & TMATE
if status is-interactive
and not set -q TMUX
# exec tmux
  exec tmate
end

# alias docker-compose & docker
alias dcup 'docker-compose up'
alias dcrun 'docker-compose run --rm app'
alias dclogs 'docker-compose logs'
alias dcbuild 'docker-compose build'

# GIT Stuff
alias gs 'git status'
alias gc 'git commit -m'
alias gca 'git commit -am'
alias ga 'git add'
alias gaa 'git add .'

# EXTRACTING Stuff
alias tar 'tar -xvf'
alias tgz 'tar -vzxf'
alias bz2 'bunzip'
alias tbz2 'tar -jxvf'
alias txz 'tar -Jxf'

alias nvimc 'nvim ~/.config/nvim/init.vim'
alias vimc 'vim ~/.vimrc'

# alias List
alias l 'la'

# alias python SimpleHTTPServer
alias pyserver 'python -m SimpleHTTPServer 9001'

# Android-studio/React-Native/Flutter | SDK
set --export ANDROID_HOME $HOME/Android/Sdk
set --export FLUTTER $HOME/Android/Sdk_flutter/bin

set -gx PATH $FLUTTER $PATH

set -Ux PATH $ANDROID_HOME/tools $PATH
set -Ux PATH $ANDROID_HOME/tools/bin $PATH
set -Ux PATH $ANDROID_HOME/platform-tools $PATH
set -Ux PATH $ANDROID_HOME/emulator $PATH
