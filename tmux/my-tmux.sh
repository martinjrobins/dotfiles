#!/bin/bash

name=martin

tmux has-session -t ${name}
if [ $? != 0 ]
then
    tmux new-session -d -s ${name} -n why -d
    tmux new-window -n local -t ${name}
    tmux send-keys -t ${name}:1 'cd ~' C-m
    tmux send-keys -t ${name}:1 'nvim' C-m

    tmux new-window -n pkpdapp -t ${name}
    tmux send-keys -t ${name}:2 'cd ~/git/pkpdapp' C-m
    tmux send-keys -t ${name}:2 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:2 'nvim' C-m
    tmux split-window -h -t ${name}:2
    tmux send-keys -t ${name}:2.1 'cd ~/git/pkpdapp/pkpdapp' C-m
    tmux send-keys -t ${name}:2.1 'source ../env/bin/activate' C-m
    tmux split-window -v -t ${name}:2
    tmux send-keys -t ${name}:2.2 'cd ~/git/pkpdapp/frontend' C-m

    tmux new-window -n pybamm -t ${name}
    tmux send-keys -t ${name}:3 'cd ~/git/PyBaMM' C-m
    tmux send-keys -t ${name}:3 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:3 'nvim' C-m
    tmux split-window -h -t ${name}:3
    tmux send-keys -t ${name}:3.1 'cd ~/git/PyBaMM' C-m
    tmux send-keys -t ${name}:3.1 'source env/bin/activate' C-m

    tmux new-window -n galvanalyser -t ${name}
    tmux send-keys -t ${name}:4 'cd ~/git/galvanalyser' C-m
    tmux send-keys -t ${name}:4 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:4 'nvim' C-m
    tmux split-window -h -t ${name}:4
    tmux send-keys -t ${name}:4.1 'cd ~/git/galvanalyser' C-m

    tmux new-window -n compilers -t ${name}
    tmux send-keys -t ${name}:5 'cd ~/git/differential-equation-compiler' C-m
    tmux send-keys -t ${name}:5 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:5 'nvim' C-m
    tmux split-window -h -t ${name}:5
    tmux send-keys -t ${name}:5.1 'cd ~/git/differential-equation-compiler' C-m
    tmux send-keys -t ${name}:5.1 'source env/bin/activate' C-m

    tmux new-window -n pybamm-gui -t ${name}
    tmux send-keys -t ${name}:6 'cd ~/git/pybamm-gui' C-m
    tmux send-keys -t ${name}:6 'source env/bin/activate' C-m
    tmux send-keys -t ${name}:6 'nvim' C-m
    tmux split-window -h -t ${name}:6
    tmux send-keys -t ${name}:6.1 'cd ~/git/pybamm-gui/bamad' C-m
    tmux send-keys -t ${name}:6.1 'source ../env/bin/activate' C-m
    tmux send-keys -t ${name}:6 'cd bamad' C-m
    tmux split-window -v -t ${name}:6
    tmux send-keys -t ${name}:6.2 'cd ~/git/pybamm-gui/frontend' C-m
    
fi

tmux attach -t ${name}
