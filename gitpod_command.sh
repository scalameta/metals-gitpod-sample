 #!/bin/bash

export PATH=$PATH:/usr/local/openjdk-8/bin

curl -L https://github.com/scalacenter/bloop/releases/download/v1.4.0-RC1/install.py | python
curl -L https://piccolo.link/sbt-1.3.8.tgz > ~/sbt.tar.gz
tar -C ~ -xvf ~/sbt.tar.gz
echo "alias bloop=~/.bloop/bloop" >> ~/.bashrc
source ~/.bloop/bash/bloop
alias sbt=~/sbt/bin/sbt
alias bloop=~/.bloop/bloop
bloop server &>/dev/null &

