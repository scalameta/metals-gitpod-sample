 #!/bin/bash

METALS_DIR=".metals"
APPS_DIR="$METALS_DIR/apps"
METALS_VERSION="1.4.2"

mkdir -p $APPS_DIR

export PATH=$PATH:/usr/local/openjdk-17/bin:$APPS_DIR

echo "-Dsbt.coursier.home=$METALS_DIR/coursier" >> .jvmopts
echo "-Dcoursier.cache=$METALS_DIR/coursier" >> .jvmopts
echo "-Dsbt.boot.directory=$METALS_DIR/sbt/boot" >> .jvmopts
echo "-Dsbt.ivy.home=$METALS_DIR/.ivy2" >> .jvmopts

curl -Lo $APPS_DIR/cs https://git.io/coursier-cli-linux && chmod +x $APPS_DIR/cs

cs install --install-dir $APPS_DIR --only-prebuilt=true bloop
cs install --install-dir $APPS_DIR sbt

cs fetch org.scalameta:metals_2.13:$METALS_VERSION --cache=$METALS_DIR/coursier 
cs fetch org.scalameta:scalafmt-cli_2.12:3.8.3 --cache=$METALS_DIR/coursier 

sbt -Dbloop.export-jar-classifiers=sources bloopInstall
bloop compile --cascade metals-gitpod-sample

echo "export PATH=\$PATH:/usr/local/openjdk-8/bin:$APPS_DIR" >> ~/.bashrc
