# oh-my-zsh load path 
 export ZSH=/home/claudio/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="powerline"
POWERLINE_RIGHT_A="mixed"
POWERLINE_SHORT_HOST_NAME="true"
POWERLINE_PATH="short"
POWERLINE_SHOW_GIT_ON_RIGHT="true"
POWERLINE_DETECT_SSH="true"


# Completion settings 
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true" #_ and - the same

DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files under VCS as dirty. 
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change command execution time format
HIST_STAMPS="dd/mm/yyyy"

plugins=(git archlinux catimg common-aliases tmux)

# User configuration
export PATH="$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
source $ZSH/oh-my-zsh.sh

# Term locale
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim' # gvim would suit
fi

# Turn on alias complletion
setopt complete_aliases
# Turn off the display
alias screenoff="xset dpms force off"
# Not familiar with valgrind, this command seems to do the job properly
alias mem_debug="valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --num-callers=20 --track-fds=yes"
# Refer to: https://news.ycombinator.com/item?id=11071754
alias dotfiles='/usr/bin/git --git-dir=$HOME/.config/dotfiles/ --work-tree=$HOME'

# Load the 'thefuck' command alias
eval $(thefuck --alias)

#Not a clue if this is still required, investigate!
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
