#!/bin/sh
export PATH=$PATH:/usr/local/openjdk-8/bin
curl -L https://github.com/scalacenter/bloop/releases/download/v1.4.0-RC1/install.py | python
echo "alias bloop=~/.bloop/bloop" >> ~/.bashrc
alias bloop=~/.bloop/bloop
~/.bloop/bloop server &>/dev/null &
curl -L https://piccolo.link/sbt-1.3.3.tgz > ~/sbt.tar.gz
tar -C ~ -xvf ~/sbt.tar.gz
alias sbt=~/sbt/bin/sbt
source ~/.bloop/bash/bloop
