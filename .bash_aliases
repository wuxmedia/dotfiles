## Emacs Aliases for Eshell
#alias ll 'ls -l $*'
#alias emacs '-nw --color=never find-file $1'
#alias w3m 'w3m-find-file $1'
#alias clear recenter 0


# some more ls aliases
# taken from the LinuxNoob forums

alias upd='sudo apt-get update'
alias upg='sudo apt-get update && sudo apt-get upgrade'
alias purge='sudo apt-get purge'
alias brc='nano ~/.bashrc'
alias search='apt-cache search'
alias policy='apt-cache policy'
alias depends='apt-cache depends'
alias ins='sudo apt-get install'

## Space on drive
alias disk='du -S | sort -n -r |more'

# search
alias where="which"
alias what="apropos"
alias apr="apropos"
alias ff="find . -type f -name"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../../"
alias ......="cd ../../../../.."
alias fonts="cd /usr/share/fonts"
alias scripts="cd $HOME/scripts"

#### SAFETY ####
alias rm='rm -Iv --preserve-root'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias shred='shred -n 100 -z -v -u'

#### REBOOT/SHUTDOWN ####
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'


alias ls='ls -F --color=auto --group-directories-first'
alias la='ls -A'
alias ll='ls -l'

alias grep='grep --color=auto'

alias md='mkdir -p -v'
alias rd='rmdir -v'

alias manb='man -H'


###### Unique to me -

alias fclist='fc-list | cut -d : -f 2 | sort -u | uniq'

alias furball='mosh tdh@80.87.128.222 --ssh="ssh -p 2222 -i /home/wux/.ssh/id_rsa-furball"'
alias eggburt='mosh tdh@eggburt.positive-internet.com --ssh="ssh -i /home/wux/.ssh/id_rsa-furball"'
alias proxy='killall ssh ; ssh -i /home/wux/.ssh/id_rsa-furball -4 -fND 9999 tdh@80.87.128.17'
alias cs="~/cs/cs.sh"
function beeb () {
  killall remmina ; remmina -ic /home/wux/.remmina/1567757499440.remmina 2>/dev/null &
}
alias bw='pwgen -Bs 10 1'
alias mm="google-chrome --app=https://comms.positive-internet.com"
alias mtv="sshfs  root@wux.ddns.net:/mnt/media/TV/ ~/TV/ ; sshfs  root@wux.ddns.net:/mnt/media/Movies/ ~/Movies/"
