# 别名

# 读取「alias.d」目录下的别名
for i in ~/profile.d/alias.d/*.sh ; do
    if [ -r "$i" ]; then
        if [ "${-#*i}" != "$-" ]; then
            . "$i"
        else
            . "$i" >/dev/null 2>&1
        fi
    fi
done

# 该文件所在目录
current_dir=$HOME/profile.d

# 比较通用的别名

alias se='source ~/.zshrc'  # 刷新环境变量

alias sl='ls'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'

alias cd..="cd .."

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

# grep
alias hg='history | grep --color=auto'
alias pg='ps -ef | grep --color=auto'

# hosts
alias hosts='cat /etc/hosts'
alias vhosts='sudo vim /etc/hosts'

# vscode
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# custom
alias zalias='cat $current_dir/zalias.sh'
alias valias='vim $current_dir/zalias.sh'
alias omz='cat $current_dir/oh_my_zsh.sh'
alias vomz='vim $current_dir/oh_my_zsh.sh'
alias zenv='cat $current_dir/zenv.sh'
alias venv='vim $current_dir/zenv.sh'
alias ztokens='cat $current_dir/ztokens.sh'
alias vtokens='vim $current_dir/ztokens.sh'

# lkzc19 个人博客相关
alias cdi='cd ~/Documents/lkzc19.github.io'






