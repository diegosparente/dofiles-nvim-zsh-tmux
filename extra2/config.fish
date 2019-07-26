#TMUX & TMATE
if status is-interactive
and not set -q TMUX
  #exec tmux
  exec tmate
end

# alias docker-compose & docker
alias dcup 'docker-compose up'
alias dcrun 'docker-compose run --rm app'
alias dclogs 'docker-compose logs'
alias dcbuild 'docker-compose build'

# SPACEFISH config

set SPACEFISH_PROMPT_FIRST_PREFIX_SHOW true

set SPACEFISH_PROMPT_ORDER time user dir host git package docker ruby aws exec_time battery jobs exit_code vi_mode char

set SPACEFISH_GIT_PREFIX [
set SPACEFISH_GIT_SUFFIX ]
set SPACEFISH_GIT_BRANCH_PREFIX ¬∑
set SPACEFISH_GIT_BRANCH_SUFFIX ¬∑
set SPACEFISH_GIT_STATUS_PREFIX \<
set SPACEFISH_GIT_STATUS_SUFFIX \>

set SPACEFISH_USER_SHOW always
set SPACEFISH_CHAR_SYMBOL ❯
set SPACEFISH_PROMPT_ADD_NEWLINE false
set SPACEFISH_CHAR_SUFFIX " "