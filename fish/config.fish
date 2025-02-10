# set -g fish_greeting (set_color yellow) コンピューター (set_color blue) (date '+%A, %B %d, %Y') (set_color red) 󰔚 (date '+%H:%M %p')
#
#


set -g fish_greeting
starship init fish | source


# if status is-interactive
#     starship init fish | source
# end

# cd ~

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

alias vim='nvim'
alias g='git'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

abbr :q 'exit'
abbr :hd 'cd /home/ligichi/'
abbr cls 'clear && cd /home/ligichi/'
abbr :cf 'cd ~/.config'
abbr :nvim 'cd ~/.config/nvim && nvim'
abbr :fish 'cd ~/.config/fish && nvim'
abbr :kitty 'cd ~/.config/kitty && nvim'
abbr :waybar 'cd ~/.config/waybar && nvim'
abbr :hypr 'cd ~/.config/hypr && nvim'
abbr :dils 'docker images'
abbr :dcls 'docker ps -a'
abbr :strd 'systemctl start docker'
abbr :stod 'systemctl stop docker.socket'
abbr :di 'docker version'

# eval "$(/home/ligichi/miniconda3/bin/conda shell.YOUR_SHELL_NAME hook)" 

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'


set -x BUN_INSTALL $HOME/.bun
set -x PATH $BUN_INSTALL/bin $PATH


set -x PATH /home/ligichi/.config/herd-lite/bin $PATH
set -x PHP_INI_SCAN_DIR /home/ligichi/.config/herd-lite/bin $PHP_INI_SCAN_DIR



set -x ANDROID_HOME /home/ligichi/Android/Sdk
set -x JAVA_HOME /usr/lib/jvm/java-17-openjdk
set -x PATH $JAVA_HOME/bin $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $PATH


set -x PATH $PATH $HOME/.pub-cache/bin

set -x PATH ~/miniconda3/bin $PATH
set -x PATH /home/ligichi/bin $PATH

misfortune | pokesay -w 30 -ub



# set -g PATH $HOME/.pyenv/shims $PATH
# set -g PATH $HOME/.pyenv/bin $PATH


# Created by `pipx` on 2024-12-08 11:14:18
set PATH $PATH /home/ligichi/.local/bin
