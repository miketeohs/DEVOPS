if [ -z "$TMUX" ]; then
            tmux attach -t default || tmux new -s default
fi
tmux new -s session

echo "Starting TMUX versus screen"
echo "Look at this URL https://tmuxcheatsheet.com/"
echo "^b ^\" vertical pane ^b^% horizontal pane "
echo "^bo go to next pane ^bUp ^bDown"
echo "Look .tmux.conf for more examples"
echo "^ba to deatach and tmux a to attach"
