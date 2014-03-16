#!/usr/bin/env bash

# instalar dependências
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm
yum -y install libyaml-devel
yum -y install sqlite-devel
yum -y install nodejs

source /usr/local/rvm/scripts/rvm

rvm use --install $1
rvm use $1
rvm use --default $1

# adicionar o user vagrant ao grupo rvm
usermod -a -G rvm vagrant

shift

if (( $# ))
	then gem install $@
fi

