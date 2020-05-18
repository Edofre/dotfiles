# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.dotfiles/zshrc/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git laravel5 osx vagrant)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/opt/ImageMagick/bin:/Users/edofreriks/.composer/vendor/bin:/Users/edofreriks/Flutter/flutter/bin:/Users/edofreriks/Flutter/tools/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Location helpers
alias dot='cd ~/.dotfiles/'
alias phpdir='cd ~/PhpstormProjects/'
alias pydir='cd ~/PycharmProjects/'

# Script helper
alias kygn='python ~/.dotfiles/scripts/keygen.py'

# bash helper
alias lss='ls -lhaF'
alias ffcd='find . -name '

# Permisson of lso script should be 0755
alias lso='~/.dotfiles/scripts/lso'

# npm helpers
alias npmi='npm install'
alias npmu='npm update'
alias npmrd="npm run debug"
alias npmrdv="npm run dev"
alias nrd="npm run dev"
alias npmrw="npm run watch"
alias npmrp="npm run production"
alias npmp="npm publish ./"

# GIT helpers
alias ga.='git add .'
alias clgs='clear ; git status'
alias gbv='git branch -v'
alias gcsmgs="git commit -S -m"
alias gdno='git diff --name-only'
alias gdns='git diff --name-status'
alias gpsuo='git push --set-upstream origin'
alias gnuke='git branch | grep -v "master" | xargs git branch -D'
alias ghist='git log HEAD~10..HEAD --pretty=oneline | tail -n 10'
alias gcdm='git checkout development'

# Gulp helpers
alias glpp='gulp --production'
alias glpdvw='gulp dev:build-watch'

# Composer helpers
alias cin='composer install'
alias cup='composer update'
alias cda='composer dump-autoload'
alias ccc='composer clear-cache'
alias cte='composer test'
alias cot='composer outdated'

# Laravel helpers
alias pad='php artisan dusk'
alias la5nukedb='php artisan migrate:refresh --seed'
alias la5test='./vendor/phpunit/phpunit/phpunit'

# Vagrant helpers
alias vs='vagrant status'
alias vsh='vagrant ssh'
alias vgs='vagrant global-status'
alias vgsp='vagrant global-status --prune'
alias vrp='vagrant reload --provision'

# Easily copy ssh key
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"

# Travis helpers
alias trvl='travis lint'

# PHPUnit
alias phpunit5='php /usr/local/bin/phpunit-5.phar'

# Coveralls
alias coverall='/usr/local/bin/coveralls.phar'

# Update time on ubuntu machine
alias snupdate='sudo ntpdate ntp.ubuntu.com'

# Just cool stuff here
alias weather='function __weather() { curl -s wttr.in/${*:-Rotterdam} | sed -n "1,7p"; }; __weather'
alias shrug="print '¯\\\_(ツ)_/¯'"

## Override default PHP
export PATH=/usr/local/php5/bin:$PATH
## Flutter ##
export PATH=$PATH:~/Flutter/bin
## Android SDK manager ##
export PATH=$PATH:/Users/edofreriks/Library/Android/sdk/cmdline-tools/latest/bin

# added by travis gem
[ -f /Users/edofreriks/.travis/travis.sh ] && source /Users/edofreriks/.travis/travis.sh
