if not status --is-interactive
    exit 0
else

    # Disable fish greeting
    set fish_greeting ""

    # Set global OS variable so 'uname' only runs 1x
    set -gx OS (uname)

    # Terminal colors
    set -gx TERM xterm-256color

    # Set language environment
    set -gx LANG en_US.UTF-8
    set -gx LANGUAGE en_US.UTF-8
    set -gx LC_ALL en_US.UTF-8
    set -gx LC_CTYPE en_US.UTF-8

    # global paths
    set -gx PATH /usr/local/bin $HOME/bin $HOME/.nimble/bin /usr/local/go/bin /usr/bin /bin /usr/sbin /sbin $HOME/bin $HOME/.local/bin $PATH
    set -gx MANPATH /usr/share/man /usr/local/man /usr/local/share/man $MANPATH
    if test -d $HOME/.local/share/man
        set -gx MANPATH $MANPATH $HOME/.local/share/man
    end

    # Set preferred editors
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx PAGER less
    set -gx MANPAGER 'less -X'

    # Go
    if test -d $HOME/go
        set GOPATH $HOME/go
        set PATH $PATH $GOPATH/bin
    end

    # Rust
    if test -d $HOME/.cargo
        et PATH $PATH $HOME/.cargo/bin
    end

    # aliases
    alias ..="cd .."
    alias ..2="cd ../.."
    alias ..3="cd ../../../"
    alias ..4="cd ../../../../"
    alias ..5="cd ../../../../../"
    alias docker="sudo podman"
    alias h="history"
    alias hs="history --search"
    alias k="kubectl"
    alias nvim="~/bin/nvim.appimage"
    alias p="pwd"
    alias podman="sudo podman"
    alias t="tail -f"


    # directory
    abbr -a -- - 'cd -'

end
