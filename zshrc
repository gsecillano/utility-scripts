# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME=$(cat ~/.zsh-theme)

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
plugins=(cap git gem bundler rails autojump zeus)

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
setproxy(){
  export http_proxy=http://proxy:8080
  export https_proxy=$http_proxy
  sed -i.bak 's/#http-proxy-host/http-proxy-host/' ~/.subversion/servers
  sed -i.bak 's/#http-proxy-port/http-proxy-port/' ~/.subversion/servers
  sed -i.bak 's/;proxy/proxy/' ~/.gitconfig
}
unsetproxy() {
  unset http_proxy
  unset https_proxy
  sed -i.bak 's/^http-proxy-host/#http-proxy-host/' ~/.subversion/servers
  sed -i.bak 's/^http-proxy-port/#http-proxy-port/' ~/.subversion/servers
  sed -i.bak 's/proxy =/;proxy =/' ~/.gitconfig
}

# Mac
alias ls='ls -G'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# VPN management.  Requires Shrewsoft VPN client
vpn() {
  case "$1" in
    "check")
      sudo nmap -PN -sU -p 500 12.178.105.137
      ;;
    "stop")
      killall ikec > /dev/null 2>&1 || echo 'VPN client not running'
      ;;
    "")
      # status
      RETVAL=0
      ifconfig | grep -A3 tap0: || { echo "VPN is disconnected" && RETVAL=1 } 
      [ $RETVAL -eq 0 ]  
      ;;
    *)
      vpn && { echo "VPN is active. Doing nothing" && return }
      vpn stop
      nohup ikec -a -r SF-ALL-ADMIN -u i819885 -p "$1" < /dev/null > ~/tmp/ikec.log 2>&1 & 
      while true; do
        vpn && break
        sleep 1;
      done
      ;;
  esac
}

#ping proxy 2>& > /dev/null && sp

alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim'
