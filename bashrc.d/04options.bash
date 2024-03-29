###############################################################################
#
# Bind commands -  Auto completion
#
###############################################################################

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

###############################################################################
#
# History control
#
###############################################################################

# append to the history file, don't overwrite it

shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

HISTSIZE=1000
HISTFILESIZE=2000

###############################################################################
#
#                         STARTUP MESSAGES
#
###############################################################################

prompt
clear
echo "Welcome to "`scutil --get ComputerName`"/"`ipconfig getifaddr en0` "["`sw_vers -productName`"@"`sw_vers -productVersion`"]"
echo 
echo -e "Ethernet:\t `ipconfig getifaddr en0 `"
echo -e "WiFi:\t\t `ipconfig getifaddr en1 `"
echo -e "External:\t `wget -qO - http://icanhazip.com`"
echo 

### Startup messages
df -hl | grep 'disk0s2' | awk '{print "MacOSX-HD :" $4"/"$2" free ("$5" used)"}'
df -hl | grep 'disk0s4' | awk '{print "MacOSX-Data :"$4"/"$2" free ("$5" used)"}'
echo 
w
prompt

###############################################################################
