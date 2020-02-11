 #!/bin/bash

export PATH=$PATH:/usr/local/openjdk-8/bin
source ~/.bloop/bash/bloop
alias bloop=~/.bloop/bloop
alias sbt=~/sbt/bin/sbt
if [ -f "~/.bloop/bash/bloop" ]; then
    bloop server &>/dev/null &
fi