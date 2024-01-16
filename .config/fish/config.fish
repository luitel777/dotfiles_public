if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux EDITOR hx
set -Ux VISUAL hx

set -gx PATH $PATH ~/.local/bin ~/.cargo/bin ~/.go/bin

source ~/.config/nnn/config

set fish_greeting

alias v=hx
alias pprof=~/.go/bin/pprof

set -Ux GOPATH $HOME/.go
set -Ux GOBIN $GOPATH/bin
set -Ux LD_LIBRARY_PATH /usr/local/lib:/usr/local/lib64:$LD_LIBRARY_PATH
set -Ux PATH $PATH:$GOPATH/bin
set -Ux GO111MODULE "auto"

export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland

set -Ux XDG_CONFIG_HOME ~/.config
set -Ux QT_AUTO_SCREEN_SCALE_FACTOR 1
set -Ux XDG_CURRENT_DESKTOP Hyprland
set -Ux XDG_SESSION_TYPE wayland
set -Ux XDG_SESSION_DESKTOP Hyprland

fish_default_key_bindings
