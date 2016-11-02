# SSH_CONNECT install
- git clone git://github.com/skyblueajm/ssh_connect.git
- mv ssh_connect .ssh_connect

# Bash profile modi
vi .bash_profile

alias conn='.conn'
alias con='.conn'

export PATH=$PATH:${HOME}/.ssh_connect
. ${HOME}/.ssh_connect/.complete.sh
cd ${HOME}
