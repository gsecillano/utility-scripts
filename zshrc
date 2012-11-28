# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME=$(cat ~/.zsh-theme)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cap git gem bundler rails ruby autojump zeus)

source $ZSH/oh-my-zsh.sh
source $HOME/.bashrc

# Customize to your needs...
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey '^R' history-incremental-search-backward
alias Z='source ~/.zshrc'
alias gsdn="gsd -n | grep '~' | awk 'END { system(sprintf(\"git log --pretty=oneline %s..%s\n\", from, \$3)); } { if (from == \"\") from=\$2;}'"
alias -g L='2>&1 | tee'
alias startwin='vmrun start /vmware/VM-GS/Windows7x64.vmx nogui 2>&1 > /dev/null'
alias stopwin='vmrun stop /vmware/VM-GS/Windows7x64.vmx nogui 2>&1 > /dev/null'
alias startdebian='vmrun start /vmware/debian/debian.vmx nogui 2>&1 > /dev/null'
alias stopdebian='vmrun stop /vmware/debian/debian.vmx nogui 2>&1 > /dev/null'
ctrepo() {
  echo 'https://robleslabs.svn.cvsdude.com/ct'
}
