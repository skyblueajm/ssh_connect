# SSH_CONNECT install
- git clone git://github.com/skyblueajm/ssh_connect.git
- mv ssh_connect .ssh_connect

# Bash profile modi
vi .bash_profile

# .ssh_connect/.conn file modi
DEFAULT_ID="skyblueajk" to default ssh connect id
DEFAULT_PORT="2230" to default ssh port

alias conn='.conn'
alias con='.conn'

export PATH=$PATH:${HOME}/.ssh_connect
. ${HOME}/.ssh_connect/.complete.sh
cd ${HOME}

# File list
- .conn : Executable file
- .complete.sh : Autocomplete file
- .server_list : Serverlist db file

# Command

con -h or --help
