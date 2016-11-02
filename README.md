# SSH_CONNECT install
- git clone git://github.com/skyblueajm/ssh_connect.git
- mv ssh_connect .ssh_connect

# .ssh_connect/.conn file modi
DEFAULT_ID="skyblueajk" to default ssh connect id<br>
DEFAULT_PORT="2230" to default ssh port<br>
<br>

# Bash profile modi
vi .bash_profile

alias conn='.conn'<br>
alias con='.conn'<br>
<br>
export PATH=$PATH:${HOME}/.ssh_connect<br>
. ${HOME}/.ssh_connect/.complete.sh<br>
cd ${HOME}<br>
<br>
# File list
- .conn : Executable file
- .complete.sh : Autocomplete file
- .server_list : Serverlist db file

# Command

con -h or --help
