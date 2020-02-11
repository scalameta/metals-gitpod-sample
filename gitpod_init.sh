#!/bin/bash

export PATH=$PATH:/usr/local/openjdk-8/bin

source ./gitpod_command.sh
~/sbt/bin/sbt -Dbloop.export-jar-classifiers=sources bloopInstall
bloop compile root