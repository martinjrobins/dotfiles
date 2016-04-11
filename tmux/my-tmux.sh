#!/bin/bash

name=martin

tmux has-session -t ${name}
if [ $? != 0 ]
then
    tmux new-session -d -s ${name} -n mutt -d
    tmux send-keys -t ${name} 'mutt' C-m 
    tmux split-window -h -t ${name}:0
    tmux send-keys -t ${name}:0.1 'offlineimap' C-m

    tmux new-window -n liquid_crystals -t ${name}
    tmux send-keys -t ${name}:1 'cd ~/git/deflateLdG' C-m
    tmux split-window -h -t ${name}:1
    tmux send-keys -t ${name}:1.1 'cd ~/git/deflateLdG; ssh forge' C-m

    tmux new-window -n voltemmetry -t ${name}
    tmux send-keys -t ${name}:2 'cd ~/git/sinusoidal_voltammetry' C-m
    tmux split-window -h -t ${name}:2
    tmux send-keys -t ${name}:2.1 'cd ~/git/sinusoidal_voltammetry; ssh forge' C-m

    tmux new-window -n chaste -t ${name}
    tmux send-keys -t ${name}:3 'ssh trix' C-m
    tmux split-window -h -t ${name}:3
    tmux send-keys -t ${name}:3.1 'ssh trix' C-m

    tmux new-window -n aboria -t ${name}
    tmux send-keys -t ${name}:4 'cd ~/git/Aboria' C-m
    tmux split-window -h -t ${name}:4
    tmux send-keys -t ${name}:4.1 'cd ~/git/Aboria' C-m

    tmux new-window -n local -t ${name}
    tmux send-keys -t ${name}:5 'cd ~' C-m
    tmux send-keys -t ${name}:5 'vim' C-m
fi

tmux attach -t ${name}
