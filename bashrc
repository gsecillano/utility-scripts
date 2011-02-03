export TMP=/tmp
export TEMP=/tmp
export ZFP_HOME=/c/workspace/zfp_stable
export P4BASE=~/Perforce
#export JRUBY_HOME=/c/projects/integration/v8_cstar_stable/Oxygen/jruby-1.4.0
#export JRUBY_HOME=/c/projects/integration/v8/Oxygen/jruby-1.5.1
#export JRUBY_HOME=/c/projects/oxygen-user-management/v8/Oxygen/jruby-1.5.1
export JRUBY_HOME=~/Perforce/main/v8/Oxygen/jruby-1.5.1
#export JRUBY_HOME=/c/projects/integration/v8_cstar_stable/Oxygen/jruby-1.5.1
#export JRUBY_HOME=/d/projects/v8_mainline/Oxygen/jruby-1.5.1
export WHOHAR_HOME=~/Perforce/main/v8/constellation/whohar

export PATH=$PATH:/usr/sbin:$ANT_HOME/bin:~/bin:$JRUBY_HOME/bin:
#export JAVA_HOME=`cygpath -m $JAVA_HOME`

export RUBY_SCRIPT_PATH=~/ruby
#export P4CLIENT=gsecil-constellation-v8
#export P4CLIENT=gsecil-dev-v8
#export P4CLIENT=gsecil-whohar-int
export P4CLIENT=gsecillano_uplb
export P4PORT=vanpgpf05.pgdev.sap.corp:1971
export P4USER=gsecillano
export P4EDITOR="gvim -f"

export http_proxy=http://proxy:8080
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
alias T='jruby -J-Xmx768m -J-XX:MaxPermSize=256m -I $RUBY_SCRIPT_PATH -rfast_fail_runner test/all_tests.rb -v --runner=fastfail'

