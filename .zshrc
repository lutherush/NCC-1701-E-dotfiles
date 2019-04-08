# = :: =========================================================== :: =
# Filename: /home/lutherus/.zshrc
# Purpose: My personal zsh  configuration file
# Author: lutherus
# License: License? uhm, this is a config file; do with it what ever you want!
# Created: 13.08.2009 18:20 CET (+0100)
# Modified: 23 22:25:52 CET 2012
# = :: =========================================================== :: =
export TERM="xterm-256color"

if [[ "$TERM" = "rxvt-256color" ]]; then
      (~/bin/color-default &)
  fi

#=-=-=-=-=-=-=
# load stuffs
#=-=-=-=-=-=-=

autoload -U colors
autoload -U compinit
autoload -U vcs_info

zmodload zsh/complist
zmodload zsh/terminfo

# setopt
setopt autocd extendedglob
setopt prompt_subst
setopt inc_append_history

# start stuffs
colors
compinit
vcs_info


#=-=-=-=-
# zstyle
#=-=-=-=-

# vcs_info
zstyle ':vcs_info:*' enable git hg svn
zstyle ':vcs_info:*' check-for-changes true

# completion

# ignore completion to commands we don't have
zstyle ':completion:*:functions' ignored-patterns '_*'

# format autocompletion style
zstyle ':completion:*:descriptions' format "%{$fg[green]%}%d%{$reset_color%}"
zstyle ':completion:*:corrections' format "%{$fg[yellow]%}%d%{$reset_color%}"
zstyle ':completion:*:messages' format "%{$fg[red]%}%d%{$reset_color%}"
zstyle ':completion:*:warnings' format "%{$fg[red]%}%d%{$reset_color%}"

# zstyle show completion menu if 2 or more items to select
zstyle ':completion:*' menu select=2

# zstyle kill menu
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.config/zsh.d/history

bindkey -v

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Import seperate config files
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

. ~/.config/zsh.d/prompt
. ~/.config/zsh.d/aliases
. ~/.config/zsh.d/functions
. ~/.config/zsh.d/fixkeys
. ~/.config/zsh.d/envars

# Configuracion POWERLVEL9K
POWERLEVEL9K_MODE='awesome-patched'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# Elementos de la barra
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ram status rbenv virtualenv vi_mode time)
POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_DIR_HOME_BACKGROUND='09'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='09'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='009'
POWERLEVEL9K_DIR_HOME_FOREGROUND='236'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='236'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='236'


# `git hub colors`
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='119'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='236'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='236'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='196'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='236'

# Quitar iconos del inicio
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# Vi-Mode
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='005'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='236'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='245'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='236'

source  ~/powerlevel9k/powerlevel9k.zsh-theme

