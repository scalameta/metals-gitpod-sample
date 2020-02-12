 #!/bin/bash

CURRENT_DIR="${pwd}"
export PATH=$PATH:/usr/local/openjdk-8/bin

curl -L https://github.com/scalacenter/bloop/releases/download/v1.4.0-RC1/install.py > ~/bloop_install.py
python ~/bloop_install.py --dest ./.metals/bloop_local
curl -L https://piccolo.link/sbt-1.3.8.tgz > ~/sbt.tar.gz
mkdir -p ./.metals/sbt
tar -C ~ -xvf ~/sbt.tar.gz -C $(pwd)/.metals
echo "alias bloop=./.metals/bloop_local/bloop" >> ~/.bashrc

echo "-Dsbt.coursier.home=./.metals/coursier" > .jvmopts
echo "-sbt-dir ./.metals/sbt" >> .sbtopts
echo "-sbt-boot ./.metals/sbt/boot" >> .sbtopts
echo "-ivy ./.metals/.ivy2" >> .sbtopts

source ./.metals/bloop_local/bash/bloop
alias sbt=./.metals/sbt/bin/sbt
alias bloop=./.metals/bloop_local/bloop
bloop server &>/dev/null &
sbt -Dbloop.export-jar-classifiers=sources bloopInstall
bloop compile --cascade root
