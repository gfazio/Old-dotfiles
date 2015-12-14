###############################################################################
#
#                         LINUX COMMANDS AND ALIASES
#
###############################################################################

###############################################################################
#
# IPlayer 
#
###############################################################################

alias get_iplayer-list='cls;for FILE in `cat ToDownloadList`; do URI=$FILE; echo "Downloading $URI"; /Users/vgg/bin/get_iplayer  --modes=flashhigh,hlshigh --url $URI; done'
alias bbccbbc='/Users/vgg/bin/get_iplayer --stream --type=livetv "CBBC" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbccbbs='/Users/vgg/bin/get_iplayer --stream --type=livetv "CBeebies" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcn='/Users/vgg/bin/get_iplayer --stream --type=livetv "BBC News" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbc1='/Users/vgg/bin/get_iplayer --stream --type=livetv "BBC One" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbc2='/Users/vgg/bin/get_iplayer --stream --type=livetv "BBC Two" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbc3='/Users/vgg/bin/get_iplayer --stream --type=livetv "BBC Three" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbc4='/Users/vgg/bin/get_iplayer --stream --type=livetv "BBC Four" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr1x='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC 1xtra" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr1='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC Radio 1" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr2='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC Radio 2" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr3='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC Radio 3" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr4='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC Radio 4 FM" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr4x='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC Radio 4 Extra" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr5='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC Radio 5 live" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'
alias bbcr5x='/Users/vgg/bin/get_iplayer --stream --type=liveradio "BBC 5 live Sports Extra" --player="/Applications/VLC.app/Contents/MacOS/vlc -"&'

###############################################################################
#
# General
#
###############################################################################

# enable color support of ls and also add handy aliases

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias bye="logout"
alias blessme="sudo bless --setBoot --folder /EFI/EFI/refind --file /EFI/EFI/refind/refind_x64.efi"
alias cls="clear"
alias deprot="chmod og+rx"
alias df="df -h"
alias drpre3att="java -jar $COMP/Palm/webos/Homebrew/Tools/04-webosdoctorp224mantaatt.jar"
alias du="du -h"
alias efi="sudo mount -t msdos /dev/disk0s1 /EFI"
alias fixeclipse="rm -f /Users/vgg/Computing/Development/Workspace/.metadata/.plugins/org.eclipse.e4.workbench/workbench.xmi"
alias galias="vim /Users/vgg/.bashrc.d/02aliases.bash" 
alias gunzip="gzip -d"
alias hkp0="ssh 192.168.0.200"
alias phkp0="ping 192.168.0.200"
alias hkp1="ssh hongkongphooey.is-a-geek.net"
alias phkp1="ping hongkongphooey.is-a-geek.net"
alias hkp2="ssh hongkongphooy.ddns.net"
alias phkp2="ping hongkongphooy.ddns.net"
alias jports="java -jar /Users/vgg/bin/JPortsUI.jar &"
alias lo="logout"
alias l="ls -pCFG"
alias ls="ls -pCFG"
alias ll='ls -alF'
alias la='ls -A'
alias less_alias="less /Users/vgg/.bashrc.d/02aliases.bash"
alias more_alias="more /Users/vgg/.bashrc.d/02aliases.bash"
alias less_env="less /Users/vgg/.bashrc.d/01environ.bash"
alias prot="chmod og-rx"
alias pre2="novacom -d roadrunner-linux -t open tty://"
alias pre3="novacom -d mantaray-linux -t open tty://"
alias touchpad="novacom -d topaz-linux -t open tty://"
alias ralias=". /Users/vgg/.bashrc.d/02aliases.bash; . /Users/vgg/.bashrc.d/01environ.bash"
alias rm="rm -f"    
alias uefi="sudo diskutil unmount /EFI"
alias vlc="/Applications/VLC.app/Contents/MacOS/vlc"
alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias wh="echo $cwd"

###############################################################################
##
## ANALYSES SOFTWARE
##
###############################################################################

alias heainit=". $HEADAS/headas-init.sh"
alias ciao="heainit;. $Astro/sw/CIAO/ciao-4.5/bin/ciao.bash"
alias ds9="$VMD/Astro/X-Ray/ds9/ds9"
alias goaips=". $VMD/Astro/Radio/AIPS/LOGIN.SH"
alias goroot=". $VMD/Astro/ROOT/root_install/bin/thisroot.sh"
alias gog4=". $VMD/Astro/GEANT4/geant4.9.6/geant4.9.6-install/bin/geant4.sh"
alias sasinit="heainit; . $SASDIR/setsas.sh"
alias setodf="export SAS_ODF=${PWD}"

###############################################################################
