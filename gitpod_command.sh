 #!/bin/bash

export PATH=$PATH:/usr/local/openjdk-8/bin

source $GITPOD_REPO_ROOT/.metals/bloop_local/bash/bloop
alias sbt=$GITPOD_REPO_ROOT/.metals/sbt/bin/sbt
alias bloop=$GITPOD_REPO_ROOT/.metals/bloop_local/bloop
bloop server &>/dev/null &