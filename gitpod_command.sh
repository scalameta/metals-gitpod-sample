 #!/bin/bash

 export PATH=$PATH:/usr/local/openjdk-8/bin
 source ~/.bloop/bash/bloop
 alias bloop=~/.bloop/bloop
 alias sbt=~/sbt/bin/sbt
 bloop server &>/dev/null &