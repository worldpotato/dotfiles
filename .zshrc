#
# OhMyZsh and ZSH related
#
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="worldpotato"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow git-prompt git-extras httpie command-not-found extract sudo colored-man-pages zsh-syntax-highlighting pass fzf z gpg-agent rsync)

source $ZSH/oh-my-zsh.sh

#
# exports for other stuff
#
# setting gopath to a better path
export GOPATH=$HOME/.go

# PATH
export PATH="$PATH:$HOME/.bin/display"
export PATH="$PATH:$HOME/.bin/wifi"
export PATH="$PATH:$HOME/.bin/misc"
export PATH="$PATH:$HOME/.bin/usb"
export PATH="$PATH:$HOME/.bin/bluetooth"
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
export PATH="$PATH:$HOME/.bin/system"
export PATH="$PATH:$GOPATH/bin"

export MANPATH="$MANPATH:/usr/local/man"

# export FZF
export FZF_BASE=/usr/bin/fzf

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export EDITOR=vim

# colors to gcc
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#
# Plugin stuff
#
# the fuck completion
eval $(thefuck --alias)

# Default values for the appearance of the prompt.
# ZSH_THEME_GIT_PROMPT_PREFIX=""
# ZSH_THEME_GIT_PROMPT_SUFFIX=""
# ZSH_THEME_GIT_PROMPT_SEPARATOR=""
# ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[Green]%}"
# ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[003]%}%{%G%}"
# ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[001]%}%{%G%}"
# ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[002]%}%{%G%}"
# ZSH_THEME_GIT_PROMPT_BEHIND="%{%G%}"
# ZSH_THEME_GIT_PROMPT_AHEAD="%{%G%}"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[001]%}%{%G%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[002]%}%{✔%G%}"

# because of st
bindkey '^[[Z' reverse-menu-complete
bindkey '^[[P'     delete-char        # Delete
bindkey '^[[5~' up-line-or-history    # PageUp
bindkey '^[[6~' down-line-or-history  # PageDown

#
# Aliases
#

alias vtop="vtop -t aid"
alias tty-clock="tty-clock -sbcDC2 -f %d.%m.%Y"
alias ip="ip -c"
alias l="exa -lhgb --git --color-scale" # list, header, group, binary, all, git, color for size
alias ll="exa -lhgba --git --color-scale"
alias viless="/usr/share/vim/vim81/macros/less.sh"
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias :wq=exit
alias :q=exit
alias corona='curl -L covid19.trackercli.com/history/germany'

alias ps="ps auxf" # show all processes, display user-oriented format, show processes that aren't attached to ttys, use full-format listing
alias psg="\ps aux | rg -v rg | rg -i -e VSZ -e" # search for a running process. example: psg firefox

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/repos/thermal-mapping-ros/devel_debug/setup.zsh

