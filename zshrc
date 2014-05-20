# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="random"
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
plugins=(tmux rails cap git gem bundler ruby autojump zeus rvm git-flow)

# tmux plugin
ZSH_TMUX_AUTOSTART=true

DISABLE_CORRECTION="true"
unsetopt correct
unsetopt correctall

source $ZSH/oh-my-zsh.sh
source $HOME/.bashrc

# Customize to your needs...
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey '^R' history-incremental-search-backward
alias Z='source ~/.zshrc'
alias gsdn="gsd -n | grep '~' | awk 'END { if (from == \"\") { printf \"No pending SVN commits\n\"; } else { system(sprintf(\"git log --pretty=oneline %s..%s\n\", from, \$3)); } } { if (from == \"\") from=\$2;}'"
alias -g L='2>&1 | tee'
alias startwin='vmrun start /vmware/VM-GS/Windows7x64.vmx nogui 2>&1 > /dev/null'
alias stopwin='vmrun stop /vmware/VM-GS/Windows7x64.vmx nogui 2>&1 > /dev/null'
alias startdebian='vmrun start /vmware/debian-6.0.5/debian-6.0.5.vmx nogui 2>&1 > /dev/null'
alias stopdebian='vmrun stop /vmware/debian-6.0.5/debian-6.0.5.vmx nogui 2>&1 > /dev/null'
ctrepo() {
  echo 'https://robleslabs.svn.cvsdude.com/ct'
}
setproxy(){
  export http_proxy=http://proxy:8080
  export https_proxy=$http_proxy
  export ftp_proxy=$http_proxy
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
alias vpn='ikec -a -r SF-ALL-ADMIN -u i819885 -p'

#ping proxy 2>& > /dev/null && sp
dc() {
  IP=$1; shift
  DCNUM="$(echo $IP | cut -d. -f2)"
  case $DCNUM in
    2)
      GW=10.2.70.20
      ;;
    4)
      GW=10.4.70.21
      ;;
    8)
      GW=10.8.70.20
      ;;
    10)
      GW=10.10.70.20
      ;;
    118)
      GW=10.118.70.55
      ;;
    *)
      echo "Unsupported DC"
      return 1
      ;;
  esac

  CMD="ssh $GW -t"
  if [ ${#IP} -gt 3 ]
  then
    CMD="$CMD \"scp .georgerc cubetree@$IP:/tmp/.; ssh -t cubetree@$IP bash --init-file /tmp/.georgerc\""
  else
    CMD="$CMD bash --init-file .georgerc"
  fi
  bash -c "$CMD $@"
}

nodes() {
  grep -i "$1" config/deploy/instances/$2.rb | grep -o "10\..*" | sed -e "s/['\",]//g" | sort | uniq
}

ctapp() {
  nodes "ctapp" $1
}

ctutil() {
  nodes "ctutil\|ctcron" $1
}

s() {
  HOST=$1
  ssh -t cubetree@$HOST.sapjam.com bash --init-file .georgerc
}

alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim'
alias log2='dc 10.2.72.11'
alias log4='dc 10.4.72.10'
alias sdlog4='dc 10.4.72.90'
alias log8='dc 10.8.72.15'
alias sdlog8='dc 10.8.70.41'
alias log10='dc 10.10.72.11'
alias log12='dc 10.118.70.53'

#ping -c 1 proxy  > /dev/null 2>&1 && sp
alias disp='export DISPLAY=:0'
alias precommit='git diff --no-ext-diff -U20 --no-prefix develop | xsel --clipboard'
alias precommitfile='git diff --no-ext-diff -U20 --no-prefix develop | tee /tmp/precommit.patch'
alias dbdev='mysql -uroot ct_development'

alias stage='s stage'
alias int1='s integration1'
alias int2='s integration2'
alias int3='s integration3'
alias int4='s integration4'
alias diffu='export CDIFF_UNIFIED=true'
alias diffs='unset CDIFF_UNIFIED'
alias z='SAFE_ERB=true zeus start'
alias ls='ls --color'
