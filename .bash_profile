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
