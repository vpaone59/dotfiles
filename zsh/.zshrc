# shell options and customization
export CLICOLOR=1
export LSCOLORS=BxCxCxCxCxegedabagacad
export PATH=$PATH:/Users/paone/pyenv

autoload -U colors && colors
PROMPT="%F{48}%M%f %F{yellow}%~%f%F{48}: %f"

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# aliases
alias ls='ls -Fhla'
alias activate='source .venv/bin/activate'
alias dcub='docker compose up --build -d'

# oracle instant client
export PATH=
export ORACLE_HOME=
export DYLD_LIBRARY_PATH=
export OCI_LIB_DIR=
export OCI_INC_DIR=
export HISTTIMEFORMAT="%F %T "

# sql-extract login info
export full_login=
export db_password=
