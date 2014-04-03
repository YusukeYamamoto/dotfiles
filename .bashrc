
# some more ls aliases
#alias ls='ls -alFG'
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias findl='find ./ -name '

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias vim='/Applications/MacVim.app/Contents/MacOS/mvim'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias less='less -M'
export PATH=$PATH:/Users/yu-yamamoto/_bin/android/sdk/platform-tools
export PATH=$PATH:/Users/yu-yamamoto/_bin/android/sdk/tools
export PATH=/usr/local/bin:$PATH


export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# git 関連
source /usr/local/Cellar/git/1.8.4/etc/bash_completion.d/git-prompt.sh 
source /usr/local/Cellar/git/1.8.4/etc/bash_completion.d/git-completion.bash 
GIT_PS1_SHOWDIRTYSTATE=true

# export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w \[\033[31m\]$(__git_ps1 "[%s]")` date +"%Y/%m/%d %p %H:%M:%S"` \[\033[00m\]\n\\$ '

export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w \[\033[31m\]$(__git_ps1 "[%s]") \[\033[00m\]\n\\$ '

