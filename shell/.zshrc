# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git sublime brew osx extract z zsh_reload zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

# User configuration

export PATH=/bin:/sbin:$PATH
export PATH=/usr/bin:/usr/sbin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# curl with openssl for building android source 7.1+
export PATH=/usr/local/opt/curl/bin:$PATH

# Basic android config
export ANDROID_HOME=/AndroidContent/AndroidSDK/android-sdk-macosx
export ANDROID_NDK=$ANDROID_HOME/ndk-bundle

# Buck build tool
export ANDROID_SDK=$ANDROID_HOME
#export ANDROID_NDK_REPOSITORY=$ANDROID_HOME/ndk-bundle
export ANDROID_NDK_REPOSITORY=/AndroidContent/AndroidSDK

# Android tools config
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/build-tools/27.0.3:$PATH

# Dotnet command tool
export PATH=/usr/local/share/dotnet:$PATH

export PATH=/Library/TeX/texbin:$PATH

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

# svn 1.7
alias svn17="/usr/bin/svn"

alias zshcfg="vi ~/.zshrc"
alias vimcfg="vi ~/.vimrc"

alias sz='source ~/.zshrc'

alias cdblog="cd /MyStuff/GitRepo_jwdev/johnwatsondev.github.io"
alias cdtools="/AndroidContent/AndroidSDK/android-sdk-macosx/tools"

# copy current pwd path
# The pwd didn't work well in alish script (always print home dir because of the path of .zshrc)
#alias cwd="echo -n `pwd` | pbcopy; echo \"Copied `pwd`\""
#alias cwd="echo $(pwd) | tr -d '\n' | pbcopy; echo \"Copied $(pwd)\""
#alias cwd="printf '%s' $(pwd) | pbcopy; echo \"Copied `pwd`\""

function cwd(){
  echo `pwd` | tr -d "\n" | pbcopy; echo "Copied `pwd`"
}

alias cat="ccat"

# git alish
alias gspl="git stash && git pull && git stash pop"

# open a android project in AndroidStudio
alias astudio-prop="as-local-properties && astudio"

# open project in VS Code
#alias vscode="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

alias vim='/usr/local/bin/vim'
alias vi='vim'

alias javac="javac -J-Dfile.encoding=utf8"

# alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
# alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s json=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s html=vi
alias -s rb=vi

export EDITOR=vi

unalias gg
unalias mysql

# SS_NG proxy
function poff(){
    unset http_proxy
    unset https_proxy
    echo -e "已关闭 http(s) 代理"
}

function ng_proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:1087"
    export https_proxy=$http_proxy
    echo -e "已通过 SS_NG 开启 vultrLondon 代理"
}

function lantern_proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:50196"
    export https_proxy=$http_proxy
    echo -e "已经开启 lantern 代理"
}

# setup jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# setup go path
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# init android source build environment
export PATH=~/bin:$PATH
# set the number of open files to be 1024
ulimit -S -n 2048
#ulimit -S -n 1024

# nvm
export NVM_DIR="/Users/johnwatson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# pyenv - Simple Python version management
#export PYENV_ROOT=/usr/local/var/pyenv
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# zsh-completions
autoload -U compinit && compinit

# https://github.com/Homebrew/homebrew-command-not-found
if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi
