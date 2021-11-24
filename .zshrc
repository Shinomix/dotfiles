bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

alias emacs="emacs -nw"
alias clean="find ~ -type f \( -name '*#' -o -name '*~' \) -delete"

alias g="git"
alias gc="git commit -v"
alias gd="git diff"
alias grbi="git rebase -i"
alias gst="git status"

alias sc="systemctl"
alias scf="systemctl list-units --failed"
alias jc="journalctl"
alias jcu="journalctl -u"
alias jcuf="journalctl -f -u"
