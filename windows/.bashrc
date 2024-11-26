

# Load Angular CLI autocompletion.
source <(ng completion script)

cf() {
    local dir
    dir=$(fd . --type d --max-depth 2 --hidden ~/MyPrograms/ | fzf --prompt "Choose a directory: " --preview 'tree -C -L 2 {}')
    if [ -n "$dir" ]; then
        cd "$dir" || return 1
    fi
}

ch() {
    local dir
    dir=$(fd . --type d --max-depth 2 --hidden ~/ | fzf --prompt "Choose a directory: " --preview 'tree -C -L 2 {}')
    if [ -n "$dir" ]; then
        cd "$dir" || return 1
    fi
}
# parse_git_branch() {
#      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }
export PS1="\[\e[32m\]\W \[\e[91m\]> \[\e[00m\] "

export NVM_DIR="C:\Usersadr\AppData\Local/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
