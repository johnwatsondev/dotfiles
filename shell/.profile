
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GEM_HOME=$HOME/.rvm/rubies/ruby-2.1.7
export PATH=$GEM_HOME/bin:$PATH
