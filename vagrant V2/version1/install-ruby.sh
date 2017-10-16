
 #!/usr/bin/env bash

 source $HOME/.rvm/scripts/rvm || source /etc/profile.d/rvm.sh

 rvm use --default --install $1

 shift

 if (( $# ))
 then gem install $@
 fi

 rvm cleanup all
 


#source /home/vagrant/.rvm/scripts/rvm # changed, used to be /usr/local/rvm/scripts/rvm

#rvm use --default --install $1        # changed, used to not set --default

#shift

#if (( $# ))
#  then gem install $@
#fi
