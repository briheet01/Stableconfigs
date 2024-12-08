if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vi='nvim'
    alias fzfprev=' fzf --preview="bat --color=always {}" '
    alias ls='exa -l --icons'
    set -x PATH /usr/bin/go $PATH
end
