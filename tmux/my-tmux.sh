#!/bin/bash

name=martin

tmux has-session -t ${name}
if [ $? != 0 ]
then
    tmux new-session -d -s ${name} -n mutt -d
    #tmux send-keys -t ${name} 'mutt' C-m 

    tmux new-window -n weechat -t ${name}
    #tmux send-keys -t ${name}:1 'weechat' C-m

    tmux new-window -n filter_modelling -t ${name}
    tmux send-keys -t ${name}:2 'cd ~/git/filter_modelling' C-m
    tmux split-window -h -t ${name}:2
    tmux send-keys -t ${name}:2.1 'cd ~/git/filter_modelling' C-m

    tmux new-window -n voltemmetry -t ${name}
    tmux send-keys -t ${name}:3 'cd ~/git/sinusoidal_voltammetry' C-m
    tmux split-window -h -t ${name}:3
    tmux send-keys -t ${name}:3.1 'cd ~/git/sinusoidal_voltammetry; ssh forge' C-m

    tmux new-window -n pints -t ${name}
    tmux send-keys -t ${name}:4 'cd ~/git/pints' C-m
    tmux split-window -h -t ${name}:4
    tmux send-keys -t ${name}:4.1 'cd ~/git/pints' C-m

    tmux new-window -n aboria -t ${name}
    tmux send-keys -t ${name}:5 'cd ~/git/Aboria' C-m
    tmux split-window -h -t ${name}:5
    tmux send-keys -t ${name}:5.1 'cd ~/git/Aboria' C-m

    working_dir=git/fellowship2017

    tmux new-window -n ${working_dir} -t ${name}
    tmux send-keys -t ${name}:6 "cd ~/${working_dir}" C-m
    tmux split-window -h -t ${name}:6
    tmux send-keys -t ${name}:6.1 "cd ~/${working_dir}" C-m

    tmux new-window -n local -t ${name}
    tmux send-keys -t ${name}:7 'cd ~' C-m
    tmux send-keys -t ${name}:7 'vim' C-m
fi

tmux attach -t ${name}
