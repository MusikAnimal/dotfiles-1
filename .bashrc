bashrc() {
    . $BASH_SOURCE
}
me=`readlink -f $0`
here=`dirname $BASH_SOURCE`
[ -f $here/bash/colors ] && . $here/bash/colors
[ -f $here/bash/aliases ] && . $here/bash/aliases
[ -f $here/bash/prompts ] && . $here/bash/prompts
unset me
unset here
[ -f $HOME/.ec2/.bashrc ] && . $HOME/.ec2/.bashrc
[ -d $HOME/bin ] && PATH="$HOME/bin:$PATH"
[ -d $HOME/android-sdk-linux ] && export PATH=${PATH}:$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platform-tools

# ignoredups:  causes lines matching the previous history entry to not be saved
# ignorespace: lines which begin with a space character are not saved in the
#              history list
HISTCONTROL=ignoredups:ignorespace

# 256 colors in terminal
export TERM='xterm-256color'

fortune # :)
