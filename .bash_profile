if [ -z "$TMUX" ]; then
            tmux attach -t default || tmux new -s default
fi
#tmux new -s session

echo "Starting TMUX versus screen"
echo "Look at this URL https://tmuxcheatsheet.com/"
echo "Also cheatsheet https://gist.github.com/andreyvit/2921703"
echo "^b ^\" vertical pane ^b^% horizontal pane "
echo "^bo go to next pane ^bUp ^bDown"
echo "Look .tmux.conf for more examples"
echo "^ba to deatach and tmux a to attach"
echo "Cut/Copy/Paste in tmux : https://www.rockyourcode.com/copy-and-paste-in-tmux/"
echo "CTRL+b, [ to begin copy mode, CTRL+SPACE,ALT+w or CTRL+w to copy into Tmux buffer, CTRL+b, ]"
echo "Press Left Shift and right mouse to paste from the normal copy "
#echo "Only Ubuntu - Press right mouse and Right SHIFT to hold the menu open"
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#or 
# export PS1="\[$(tput bold)$(tput setb 4)$(tput setaf 7)\]\u@\h:\w $ \[$(tput sgr0)\]"
# export PS1='$USER@$(hostname -s) ${PWD##*/} \ $ '
# https://linux.101hacks.com/ps1-examples/prompt-color-using-tput/
