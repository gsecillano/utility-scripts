export TMP=/tmp
export TEMP=/tmp
export ZFP_HOME=/c/workspace/zfp_stable
export P4BASE=$HOME/Perforce
export DEVBASE=$HOME/dev
export JRUBY_HOME=$DEVBASE/Oxygen/jruby-1.6.2
export WHOHAR_HOME=$DEVBASE/constellation/whohar
export M2_HOME=$DEVBASE/Oxygen/build-tools/apache-maven-3.0.3
export ANT_HOME=$DEVBASE/Oxygen/build-tools/apache-ant-1.7.1

export PATH=$PATH:/usr/sbin:$ANT_HOME/bin:$M2_HOME/bin:~/bin:$JRUBY_HOME/bin:/opt/p4v-2010.1.276058/bin

export RUBY_SCRIPT_PATH=~/ruby
#export P4CLIENT=gsecil-linux-main
#export P4PORT=vanpgpf05.pgdev.sap.corp:1971
#export P4USER=i819885
#export P4EDITOR="gvim -f"
#P4TICKET=$(grep $P4PORT ~/.p4tickets | cut -f3 -d:)
#if [ -z "$P4DONTCHECKIN" ]
#then
#  export P4DONTCHECKIN=$(p4 -P $P4TICKET changes -u i819885 -s pending -c gsecil-linux-main | grep DO-NOT-CHECK-IN | cut -d' ' -f 2)
#fi

#export http_proxy=http://proxy:8080
#export https_proxy=$http_proxy
#export no_proxy=localhost
export GIT_SSL_NO_VERIFY=true

#alias t='tail -f $PWD/log/development.log'
#alias rake='jruby -S rake'
#alias gem='jruby -S gem'
alias T='jruby -J-Xmx1300m -J-XX:MaxPermSize=256m -I $RUBY_SCRIPT_PATH -rfast_fail_runner test/all_tests.rb -v --runner=fastfail'
alias ls='ls -G'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
