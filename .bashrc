git_branch () {
	  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
	    }
USER='$(whoami)'
TIME='\[\033[01;31m\]\t \[\033[01;32m\]'
LOCATION=' \[\033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \[\033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
PS1=$TIME$USER$LOCATION$BRANCH
alias ll='ls -ltr'
