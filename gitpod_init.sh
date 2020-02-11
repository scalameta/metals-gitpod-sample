#!/bin/bash

export PATH=$PATH:/usr/local/openjdk-8/bin
curl -L https://github.com/scalacenter/bloop/releases/download/v1.4.0-RC1/install.py | python &&
echo "alias bloop=~/.bloop/bloop" >> ~/.bashrc &&
curl -L https://piccolo.link/sbt-1.3.8.tgz > ~/sbt.tar.gz &&
tar -C ~ -xvf ~/sbt.tar.gz &&
~/.bloop/bloop server &>/dev/null &
~/sbt/bin/sbt -Dbloop.export-jar-classifiers=sources bloopInstall