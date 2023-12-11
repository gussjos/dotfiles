# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="/home/gussjo/miniconda3/bin:$PATH"  # commented out by conda initialize  # commented out by conda initialize


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# 
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
       	 kubectl
      	 docker
      	 zsh-z
         zsh-256color
)

source $ZSH/oh-my-zsh.sh
source ~/.profile

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#

alias fucking="sudo"

# CLI related
alias cl="clear"
alias l="exa --long"
alias nvzm="vim ~/.zshrc"

alias dcup="docker-compose up"
alias dcdn="docker-compose down"
alias drs="sudo systemctl restart docker.socket docker.service"
alias dc="docker-compose"
#alias rmk='zsh ~/scripts/rmk.sh'
alias rmk='docker kill $(docker ps -q) && docker rm $(docker ps -q)'

alias vzsh='source ~/.zshrc'

# Stena related aliases
alias ct="cd ~/stena-tmi/tmi-fuel-opt/"
alias cg="cd ~/stena-tmi/tmi-fuel-opt-gui/"
alias reb="docker restart tmi-fuel-opt_tmi-fuel-opt_1 | grep opt_1"
alias open="nautilus ."

# Alacritty
alias at="alacritty-themes"

# Git related
alias gau="ga -u"
alias jlab="jupyter lab"

alias ssync='bash ~/scripts/sync_ship_simulator_route.sh'

alias dlp="zsh ~/scripts/dlp.sh"
alias dlpa="zsh ~/scripts/dlpa.sh"

alias opc="zsh ~/scripts/openconnect.sh"
alias mvw="zsh ~/scripts/mvw.sh"

# Kubectl
alias kcnt="kcn fuelopt-test"
alias kcnp="kcn fuelopt-prod"

# Neovim
alias vim="nvim"
alias nv1m="z nvim && vim init.vim"

# tmuxp
export DISABLE_AUTO_TITLE='true'

# bind vim
bindkey -v
bindkey "^R" history-incremental-search-backward

# Some tmux stuff, should this even be here?
tmux bind-key x kill-pane
tmux bind-key h resize-pane -L 10
tmux bind-key j resize-pane -D 10
tmux bind-key k resize-pane -U 10
tmux bind-key l resize-pane -R 10

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gussjo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gussjo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gussjo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/gussjo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#xrandr --output HDMI-0 --mode 3440x1440 --rate 100 
conda activate py2
#neofetch
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
#  working hyper version : 3.2.3 # 13 jan 2023
