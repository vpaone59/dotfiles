# Download Zinit, if it's not there yet
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting

# shell options and customization
export CLICOLOR=1
# Taken from: https://github.com/RobertAudi/.dotfiles/blob/master/docs/cheat-sheets/ls-colors-cheat-sheet.txt
# position                        colors
# --------                        ------
# 1 - directory                   a - black
# 2 - system_link                 b - red
# 3 - socket                      c - green
# 4 - pipe                        d - brown
# 5 - executable                  e - blue
# 6 - block_special               f - magenta
# 7 - char_special                g - cyan
# 8 - exe_setuid                  h - light grey
# 9 - exe_setgid                  A - bold black, usually shows up as dark grey
# a - dir_writeothers_sticky      B - bold red
# b - dir_writeothers_NOsticky    C - bold green
#                                 D - bold brown, usually shows up as yellow
#                                 E - bold blue
#                                 F - bold magenta
#                                 G - bold cyan
#                                 H - bold light grey; looks like bright white
#                                 x - default foreground or background
export LSCOLORS=exgxcxcxcxegfdfbfgfcfd
export PATH=$PATH:/Users/paone/pyenv
export PATH="/Users/paone/Library/Python/3.11/bin:$PATH"

# oracle instant client
export PATH=/Users/paone/instantclient:$PATH
export ORACLE_HOME=/Users/paone/instantclient
export DYLD_LIBRARY_PATH=/Users/paone/instantclient
export OCI_LIB_DIR=/Users/paone/instantclient
export OCI_INC_DIR=/Users/paone/instantclient/sdk/include
export HISTTIMEFORMAT="%F %T "

# db login credentials
export full_login="paone@orarac2.rowan.edu:1521/FORTNGHT.ORARAC2"
export db_password="whatthedogdoin"

# autoload scripts
autoload -U colors && colors
PROMPT="%F{48}%M%f %F{yellow}%~%f%F{48}: %f"

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# aliases
alias ls='ls -Fhl --color'
alias lsa='ls -Fhla --color'
alias activate='source .venv/bin/activate'
alias dcub='docker compose up --build -d'
