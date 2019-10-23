#!/bin/sh
curl -L https://github.com/scalacenter/bloop/releases/download/v1.3.4/install.py | python
echo "alias bloop=~/.bloop/bloop" >> ~/.bashrc
alias bloop=~/.bloop/bloop
~/.bloop/bloop server &>/dev/null &