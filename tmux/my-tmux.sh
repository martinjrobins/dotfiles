#!/bin/bash

name=martin

tmux has-session -t ${name}
if [ $? != 0 ]
then
    tmux new-session -d -s ${name} -n why -d
    tmux new-window -n local -t ${name}
    tmux send-keys -t ${name}:1 'cd ~' C-m
    tmux send-keys -t ${name}:1 'vim' C-m

    tmux new-window -n pkpdapp -t ${name}
    tmux send-keys -t ${name}:2 'cd ~/git/pkpdapp' C-m
    tmux send-keys -t ${name}:2 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:2 'vim' C-m
    tmux split-window -h -t ${name}:2
    tmux send-keys -t ${name}:2.1 'cd ~/git/pkpdapp/pkpdapp' C-m
    tmux send-keys -t ${name}:2.1 'source ../env/bin/activate' C-m
    tmux split-window -v -t ${name}:2
    tmux send-keys -t ${name}:2.2 'cd ~/git/pkpdapp/frontend' C-m

    tmux new-window -n pybamm -t ${name}
    tmux send-keys -t ${name}:3 'cd ~/git/PyBaMM' C-m
    tmux send-keys -t ${name}:3 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:3 'vim' C-m
    tmux split-window -h -t ${name}:3
    tmux send-keys -t ${name}:3.1 'cd ~/git/PyBaMM' C-m
    tmux send-keys -t ${name}:3.1 'source env/bin/activate' C-m

    tmux new-window -n galvanalyser -t ${name}
    tmux send-keys -t ${name}:4 'cd ~/git/galvanalyser' C-m
    tmux send-keys -t ${name}:4 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:4 'vim' C-m
    tmux split-window -h -t ${name}:4
    tmux send-keys -t ${name}:4.1 'cd ~/git/galvanalyser' C-m

    tmux new-window -n compilers -t ${name}
    tmux send-keys -t ${name}:5 'cd ~/git/compilers ' C-m
    tmux send-keys -t ${name}:5 'vim' C-m
    tmux split-window -h -t ${name}:5
    tmux send-keys -t ${name}:5.1 'cd ~/git/compilers' C-m
    
fi

tmux attach -t ${name}
