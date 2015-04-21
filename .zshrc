# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=/usr/sbin:$PATH
export PATH=/home/daniel/scripts:$PATH
# export PATH=/home/daniel/Documents/Uni/phdproject/Software/MOOG:$PATH
export PATH=/home/daniel/Software/SPECPAR/MOOG2013:$PATH
export PATH=/home/daniel/Documents/Uni/phdproject/programs/astro_scripts:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/anaconda3/bin:$PATH
export FPATH=$HOME/GIT/conda-zsh-completion:$FPATH

export PYTHONPATH=$HOME/Documents/Uni/phdproject/programs/astro_scripts:$PYTHONPATH
export EDITOR='vim'

stty stop undef # to unmap <C-s> for vim.ipython to work
zstyle ':completion:*' special-dirs true
zstyle ':completion::complete:*' use-cache 1

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"
# ZSH_THEME="sorin"
# ZSH_THEME="powerline"
# ZSH_THEME="agnoster"
# ZSH_THEME="avit"
# ZSH_THEME="muse"


POWERLINE_DETECT_SSH="true"
export TERM="xterm-256color"
[ -n "$TMUX" ] && export TERM=screen-256color
if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi


# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git pip colored-man github zsh-syntax-highlighting colorize autojump)

source $ZSH/oh-my-zsh.sh
source /home/daniel/.profile


## Aliasses
# Open different files with different programs
alias fuck='$(thefuck $(fc -ln -1))'
alias less='less -M'
alias cat='colorize'
alias la='ls -a'
alias ipython='/home/daniel/anaconda3/bin/ipython'

alias ipythonqt='ipython qtconsole --colors=linux --style monokai'
alias lifa='sh /home/daniel/scripts/lifa.sh'
alias update='sh /home/daniel/scripts/update.sh'

alias uni='cd /home/daniel/Documents/Uni/'
alias spec='cd /home/daniel/Documents/Uni/Speciale'
alias phd='cd /home/daniel/Documents/Uni/phdproject'

alias top='htop'
alias latexmaster="grep -l '\\documentclass' *tex | xargs latexmk -pdf -pvc -silent"

# bindkey -v

# bindkey '^P' up-history
# bindkey '^N' down-history
# bindkey '^?' backward-delete-char
# bindkey '^h' backward-delete-char
# bindkey '^w' backward-kill-word
# bindkey '^r' history-incremental-search-backward
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_prompt_info) $EPS1"
#     zle reset-prompt
# }

# zle -N zle-line-init
# zle -N zle-keymap-select
# export KEYTIMEOUT=1
