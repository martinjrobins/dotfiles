#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bakke'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

dakota_dir=$HOME/pkg/dakota-6.3.0.Linux.x86_64
export PATH=/usr/local/cuda-9.1/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-9.1/lib64:$LD_LIBRARY_PATH

eval `dircolors /home/mrobins/.dir_colors/dircolors`
source ~/.mintty-colors-solarized/mintty-solarized-dark.sh


# added by travis gem
[ -f /home/mrobins/.travis/travis.sh ] && source /home/mrobins/.travis/travis.sh

# added by Miniconda3 installer
export PATH="/scratch/robinsonm/miniconda3/bin:$PATH"

matlab() {
  $HOME/MATLAB/R2018b/bin/matlab -nodisplay -nosplash -nodesktop -r "run('$1')" 
}

source /usr/share/doc/fzf/examples/key-bindings.bash
source /usr/share/doc/fzf/examples/completion.bash


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/mrobins/.npm/_npx/16864/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /home/mrobins/.npm/_npx/16864/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash
export PATH=/usr/share/swift/usr/bin:/home/mrobins/.local/bin:/scratch/robinsonm/miniconda3/bin:/usr/local/cuda-9.1/bin:/scratch/robinsonm/miniconda3/bin:/usr/local/cuda-9.1/bin:/home/mrobins/.local/bin:/scratch/robinsonm/miniconda3/bin:/usr/local/cuda-9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
