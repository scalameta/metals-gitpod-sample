 #!/bin/bash

METALS_DIR="$GITPOD_REPO_ROOT/.metals"
METALS_VERSION="0.8.3"
BLOOP_VERSION="1.4.0-RC1-162-888454e1"

export PATH=$PATH:/usr/local/openjdk-8/bin

curl -L https://github.com/scalacenter/bloop/releases/download/v1.4.0-RC1/install.py > ~/bloop_install.py
python ~/bloop_install.py --dest $METALS_DIR/bloop_local
curl -L https://piccolo.link/sbt-1.3.9.tgz > ~/sbt.tar.gz
mkdir -p $METALS_DIR/sbt
tar -xvf ~/sbt.tar.gz -C $METALS_DIR

echo "-Dsbt.coursier.home=$METALS_DIR/coursier" >> .jvmopts
echo "-Dcoursier.cache=$METALS_DIR/coursier" >> .jvmopts
echo "-sbt-dir $METALS_DIR/sbt" >> .sbtopts
echo "-sbt-boot $METALS_DIR/sbt/boot" >> .sbtopts
echo "-ivy $METALS_DIR/.ivy2" >> .sbtopts

curl -Lo $METALS_DIR/cs https://git.io/coursier-cli-linux && chmod +x $METALS_DIR/cs
$METALS_DIR/cs fetch org.scalameta:metals_2.12:$METALS_VERSION --cache=$METALS_DIR/coursier 
$METALS_DIR/cs fetch org.scalameta:scalafmt-cli_2.12:2.4.2 --cache=$METALS_DIR/coursier 

source $METALS_DIR/bloop_local/bash/bloop
alias sbt=$METALS_DIR/sbt/bin/sbt
alias bloop=$METALS_DIR/bloop_local/bloop
sbt -Dbloop.export-jar-classifiers=sources bloopInstall
$METALS_DIR/cs launch ch.epfl.scala:bloopgun-core_2.12:$BLOOP_VERSION --cache=$METALS_DIR/coursier  -- compile --cascade root