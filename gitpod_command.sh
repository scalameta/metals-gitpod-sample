 #!/bin/bash

export PATH=$PATH:/usr/local/openjdk-8/bin
alias bloop=~/.bloop/bloop
alias sbt=~/sbt/bin/sbt
if [ -f "~/.bloop/bash/bloop" ]; then
    source ~/.bloop/bash/bloop
    bloop server &>/dev/null &
fi