
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="avit"

DEFAULT_USER="djessup"

# Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump macos github brew vagrant)

source $ZSH/oh-my-zsh.sh

# Helpful Bash aliases
alias reload='source ~/.zshrc'
alias rmdsstores='find ./ -type f | grep .DS_Store | xargs rm'
alias ll='ls -lahGp'
alias l='ls -lhGp'
alias ..='cd ..'
alias flushdns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# open common file
alias hosts="vi /etc/hosts"

# Copy current directory into clipboard
alias cpwd='printf "$PWD" | pbcopy'

# Obtain IP for a hostname
function ipfor(){
  dig +short $1 | grep -E '^[0-9.]+$' | head -1
}

# AutoJump
# [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

# python
alias python="python3"
alias pip="python3 -m pip"

# Add Visual Studio Code (code)
export PATH=$PATH:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Postgres App
# export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# auto suggest
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
