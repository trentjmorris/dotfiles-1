zstyle ':completion:*' menu select
# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# zsh autosuggestions
source $LIB_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh completions
fpath=($LIB_DIR/zsh-completions/src $fpath)
