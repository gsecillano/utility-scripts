export TMP=/tmp
export TEMP=/tmp
export ZFP_HOME=/c/workspace/zfp_stable
export P4BASE=$HOME/Perforce
export DEVBASE=$HOME/dev
export JRUBY_HOME=$DEVBASE/Oxygen/jruby-1.6.2
export WHOHAR_HOME=$DEVBASE/constellation/whohar

export PATH=$PATH:/usr/sbin:$ANT_HOME/bin:~/bin:$JRUBY_HOME/bin:/opt/p4v-2010.1.276058/bin

export RUBY_SCRIPT_PATH=~/ruby
export P4CLIENT=gsecil-linux-main
export P4PORT=vanpgpf05.pgdev.sap.corp:1971
export P4USER=gsecillano
export P4EDITOR="gvim -f"
export P4DONTCHECKIN=${P4DONTCHECKIN:-$(p4 changes -u gsecillano -s pending -c gsecil-linux-main | grep DO-NOT-CHECK-IN | cut -d' ' -f 2)}

export http_proxy=http://proxy:8080
export https_proxy=$http_proxy
export GIT_SSL_NO_VERIFY=true

#alias t='tail -f $PWD/log/development.log'
alias vi=gvim
alias irb=~/bin/irb
alias rake='jruby -S rake'
alias gem='jruby -S gem'
alias T='jruby -J-Xmx1300m -J-XX:MaxPermSize=256m -I $RUBY_SCRIPT_PATH -rfast_fail_runner test/all_tests.rb -v --runner=fastfail'
alias ls='ls --color'
