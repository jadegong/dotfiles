if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting

end

function fish_user_key_bindings
    # Reset regular space so it doesn't expand
    bind space self-insert
    # Bind Control + Space to expand
    bind ctrl-space expand-abbr
end

# alias
# alias pacman='sudo pacman'
alias la='eza -abghHlS --git --icons'
alias emacsnw='emacs -nw'
alias rg='rg -. -g "!{node_modules,.git,.log,.idea,.vscode,.sass-cache}"'
alias g="git"
alias clear="printf '\033[H\033[2J'"

# nvm settings, exec once, then comment
# set -U nvm_data $HOME/.nvm
# set -U nvm_default_version v22.21.1
# end nvm settings

# golang configurations
set -gx GOPATH $HOME/data/programs/go
set -gx GOPROXY "https://mirrors.aliyun.com/goproxy"
set -a PATH $GOPATH/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jade/miniconda3/bin/conda
    eval /home/jade/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/jade/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/jade/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH $PATH /home/jade/miniconda3/bin
    end
end
# <<< conda initialize <<<

# hugging face cache
set -gx HF_HOME /datad/.cache/huggingface
set -gx HF_ENDPOINT "https://hf-mirror.com"
# end hugging face cache
