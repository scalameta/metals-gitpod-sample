 #!/bin/bash

METALS_DIR="$GITPOD_REPO_ROOT/.metals"
BLOOP_VERSION="1.4.0-RC1-162-888454e1"

export PATH=$PATH:/usr/local/openjdk-8/bin

source $METALS_DIR/bloop_local/bash/bloop
alias sbt=$METALS_DIR/sbt/bin/sbt
alias bloop=$METALS_DIR/bloop_local/bloop

$METALS_DIR/cs launch ch.epfl.scala:bloopgun-core_2.12:$BLOOP_VERSION --cache=$METALS_DIR/coursier  -- about