# Vincent Paone zsh config

# Download Zinit, if it's not there yet
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting

# shell options and customization
export CLICOLOR=1
export LSCOLORS=BxCxCxCxCxegedabagacad
export PATH=$PATH:/Users/paone/pyenv
export PATH="/Users/paone/Library/Python/3.11/bin:$PATH"

# oracle instant client
export PATH=
export ORACLE_HOME=
export DYLD_LIBRARY_PATH=
export OCI_LIB_DIR=
export OCI_INC_DIR=
export HISTTIMEFORMAT="%F %T "

# db login credentials for sql-extract
export full_login=""
export db_password=""

# autoload scripts
autoload -U colors && colors
PROMPT="%F{48}%M%f %F{yellow}%~%f%F{48}: %f"

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# aliases
alias ls='ls -Fhla'
alias activate='source .venv/bin/activate'
alias dcub='docker compose up --build -d'
