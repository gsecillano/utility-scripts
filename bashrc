export TMP=/tmp
export TEMP=/tmp
export ZFP_HOME=/c/workspace/zfp_stable
export JRUBY_HOME=/d/projects/v8_mainline/Oxygen/jruby-1.5.1
export WHOHAR_HOME=`cygpath -am ~/dev/constellation/whohar`

export PATH=$PATH:$ANT_HOME/bin:~/bin:$JRUBY_HOME/bin:/c/Program\ Files/Business\ Objects/BusinessObjects\ Enterprise\ 12.0/win32_x86:/c/Program\ Files/MySQL/MySQL\ Server\ 5.1/bin

#export P4CLIENT=gsecil-constellation-v8
export P4CLIENT=gsecil-dev-v8
export P4PORT=perforceserver1:1971
export P4USER=gsecillano

export http_proxy=http://bluecoat-proxy:8080
export https_proxy=$http_proxy
export GIT_SSL_NO_VERIFY=true

#alias t='tail -f $PWD/log/development.log'
alias vi=gvim
alias irb=~/bin/irb
alias rake='jruby -S rake'
alias gem='jruby -S gem'
alias rails='jruby -S rails'
alias server='cd $WHOHAR_HOME;jruby -J-Djruby.native.enabled=false script/server;cd - >/dev/null'
alias cy='cygpath -a -m'
alias startxwin='startxwin > /dev/null 2>&1'
alias pbe='cd ~/dev/constellation/whohar; PBE_AGENT_QUEUE=1 PBE_SERVER_QUEUE=1 PBE_IPAPER_QUEUE=1 PBE_SEARCH_QUEUE=1 PBE_TERM_EXTRACTION_QUEUE=1 PBE_SEARCH_INDEX_QUEUE=1 PBE_EXPORT_QUEUE=1 PBE_EXPLORER_QUEUE=1 jruby script/runner "Cstar::pbe_server" > /tmp/pbe.log 2>&1'

