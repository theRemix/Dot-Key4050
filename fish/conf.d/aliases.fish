alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection c -o"
alias pbj='pbpaste | python -m json.tool'

alias ag="ag --hidden -p ~/.agignore"

alias lll='ls -FlGogtrh'
alias ll='ls -lah'

alias t='task'
alias ta='task add'
#alias td='task done' # task 123 done # in /usr/local/bin/td
alias ts='task start' # task start 123
alias tst='task stop' # task stop 123
alias tm='task modify' # task modify ...
alias tt='t +TODAY list'
# alias tt='t +DUE list'
alias tta='task add due:eod'

