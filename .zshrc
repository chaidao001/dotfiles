# ZSH
####################################################################################################
if [ -z "$SSH_CLIENT" ]; then
    export ZSH=~/.oh-my-zsh
    ZSH_THEME="robbyrussell"
    plugins=(git extract npm pip)
    source $ZSH/oh-my-zsh.sh

    alias shc='vi ~/dotfiles/.zshrc'
    alias shr='source ~/.zshrc'

    alias ssh='~/Personal/sshrc/sshrc'
fi


# GENERAL
####################################################################################################
# exports
if [ -z "$SSH_CLIENT" ]; then
    export PATH=$PATH:/usr/local/opt/go/libexec/bin
    export JAVA_HOME=$(/usr/libexec/java_home)
    export ANSIBLE_CONFIG=~/.ansible.cfg
fi

# general
alias ll='ls -lGa'
alias lessn='less -N'
alias awkc="awk -F ','"
alias ..='cd ..'
alias t="tmux"
alias ta="tmux a"
alias cat='bat'

# git
alias gg='git grep'

# iterm
alias iterm='osascript ~/Personal/coding/applescripts/iterm.scpt'

# find a column number given title in csv
alias column="function _col(){awk -v col_name=\"\$1\" -F ',' '{for(i=1;i<=NF;i++) {if (\$i == col_name) printf(\"\%d\n\", i)} exit 0}' \$2};_col"

# get weather
alias weather='bash -xc '\''curl wttr.in/$0'\'''

# mac
alias mouse='defaults write .GlobalPreferences com.apple.mouse.scaling -1; defaults write .GlobalPreferences com.apple.scrollwheel.scaling -1'

# python open 8765 port
alias python-port='python -m http.server 8765'

# sublime
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# maven
alias mci='mvn clean install'
alias mcis='mvn clean install -DskipTests'

# mount ntfs on mac
alias mount='mkdir /Volumes/NTFS;sudo mount -w -t ntfs  /dev/disk2s1 /Volumes/NTFS; open /Volumes/NTFS'
alias unmount='diskutil unmount /dev/disk2s1'

# cd
alias desktop='cd ~/Desktop/'
alias dls='cd ~/Downloads/'
alias work='cd ~/Work'
alias dt='cd ~/Work/data-table'
alias todo='vi ~/Personal/todo.markdown'


# VIM
####################################################################################################
if [ -z "$SSH_CLIENT" ]; then
    alias vimrc='vi ~/.vimrc'
    alias vi='/usr/local/bin/vim'
    alias vim='/usr/local/bin/vim'
    alias vimdiff='/usr/local/bin/vimdiff'
    alias vimtutor='/usr/local/bin/vimtutor'
fi

alias v='vim'


# SSH
####################################################################################################
alias tuscan='ssh tuscan'

alias alchemist='ssh tuscan-ieb-di-3'

alias pem='ssh tuscan-oeb-mgmt-1'

alias pg-prod='ssh tuscan-pec-dispatch-1'
alias pg-stag='ssh tuscan-sea-dispatch-1'

alias foundry-prod='ssh tuscan-iec-di-1'
alias foundry-stag='ssh tuscan-ieb-di-3'

alias foundry-ui-prod='ssh tuscan-iec-di-1'
alias foundry-ui-stag='ssh tuscan-ieb-di-3'

alias dt-prod='ssh tuscan-pec-dtable-1'
alias dt-stag='ssh tuscan-seb-dtable-1'

alias slate-prod='ssh tuscan-pec-slate-1'
alias slate-stag='ssh tuscan-sea-slate-1'

alias houston-prod='ssh tuscan-oeb-mgmt-1'
alias houston-stag='ssh tuscan-oea-mgmt-3'

alias nagios='ssh tuscan-oeb-mgmt-1'

alias rundeck='ssh tuscan-pec-orchestration-1'

alias hadoop-prod='ssh tuscan-pec-cnc-1'
alias hadoop-stag='ssh tuscan-seb-cnc-1'

alias airship-prod='ssh tuscan-pec-esearch-1'
alias airship-stag='ssh tuscan-sea-esearch-1'

alias mario='ssh tuscan-pec-mario3-1'

alias contour-prod='ssh tuscan-pec-latitude-1'
alias contour-stag='ssh tuscan-seb-latitude-1'

alias code33='ssh tuscan-sea-code33-1'

alias killswitch='ssh tuscan-pec-killswitch-1'

alias authapp='ssh tuscan-pec-sso-1'

alias multipass-prod='ssh tuscan-peb-multipass-1'
alias multipass-stag='ssh tuscan-seb-multipass-1'

alias gatekeeper='ssh tuscan-peb-multipass-1'

alias abacus-prod='ssh tuscan-peb-abacus-1'
alias abacus-stag='ssh tuscan-seb-abacus-1'

alias spark-prod='iterm tuscan-pec-cnc-1 tuscan-pec-ccf-1 tuscan-pea-ccf-2 tuscan-peb-ccf-3'
alias spark-stag='iterm tuscan-seb-cnc-1 tuscan-seb-ccf-1 tuscan-sec-ccf-1 tuscan-sea-ccf-1'

alias mithril-prod='iterm tuscan-pec-mithril-1 tuscan-pec-radar-1'
alias mithril-stag='iterm tuscan-sea-mithril-1 tuscan-sea-radar-1'

alias hercules-prod='ssh tuscan-peb-pdb-2'
alias hercules-stag='ssh tuscan-seb-pdb-2'

alias radar-prod='ssh tuscan-peb-radar-2'
alias radar-stag='ssh tuscan-seb-radar-2'


# ANSIBLE
####################################################################################################
alias sync='ansible-playbook -i ~/ansible/mississippi_hosts -k ~/ansible/sync_dt_code_to_stash.yml'

