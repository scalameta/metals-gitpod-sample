 #!/bin/bash

export PATH=$PATH:/usr/local/openjdk-8/bin

source ./.metals/bloop_local/bash/bloop
alias sbt=./.metals/sbt/bin/sbt
alias bloop=./.metals/bloop_local/bloop
bloop server &>/dev/null &