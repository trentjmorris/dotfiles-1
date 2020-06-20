# clone repos to lib {{{
function clone_if_needed() {
  src="$1"
  dest="$2"
  dest_base="$LIB_DIR/$(basename "$2")"

  if [ ! -e $dest ]; then
    git clone "$src" $dest > /dev/null 2>&1
    echo_ok "Repo cloned into '$dest_base'"
  else
    echo_skip "'$dest_base' already exists"
  fi
}

if [ ! -e $LIB_DIR ]; then
  mkdir $LIB_DIR
  echo_ok "Repo directory created: $LIB_DIR"
else
  echo_skip "Repo directory already exists: $LIB_DIR"
fi
# alias-tips
clone_if_needed https://github.com/djui/alias-tips.git $LIB_DIR/alias-tips
# git-flow completion
clone_if_needed https://github.com/petervanderdoes/git-flow-completion.git $LIB_DIR/git-flow-completion
# pure prompt
clone_if_needed https://github.com/sindresorhus/pure.git $LIB_DIR/pure
# zsh-z (zsh optimized `z` alternative)
clone_if_needed https://github.com/agkozak/zsh-z.git $LIB_DIR/z
# zsh-autosuggestions
clone_if_needed https://github.com/zsh-users/zsh-autosuggestions.git $LIB_DIR/zsh-autosuggestions
# zsh-completions
clone_if_needed https://github.com/zsh-users/zsh-completions.git $LIB_DIR/zsh-completions
# syntax highlighting
clone_if_needed https://github.com/zsh-users/zsh-syntax-highlighting.git $LIB_DIR/zsh-syntax-highlighting
# HOSTS - Unified hosts file with base extensions - https://github.com/StevenBlack/hosts
clone_if_needed https://github.com/StevenBlack/hosts.git $LIB_DIR/hosts
if [ -e $LIB_DIR/hosts ]; then cd $LIB_DIR/hosts && pip3 install --user -r requirements.txt > /dev/null 2>&1; cd $DOTFILES_DIR; fi # install dependencies
# Xcode Dracula theme
clone_if_needed https://github.com/dracula/xcode.git $LIB_DIR/xcode-dracula
# Xcode One Dark
clone_if_needed https://@github.com/bojan/xcode-one-dark.git $LIB_DIR/xcode-one-dark
# ayu-theme
clone_if_needed https://github.com/ayu-theme/ayu-vim.git $LIB_DIR/ayu-vim
link_file "$LIB_DIR/ayu-vim/term/ayu-mirage.itermcolors" "$DOTFILES_DIR/iterm"
# nord themes
clone_if_needed https://github.com/arcticicestudio/nord-iterm2.git $LIB_DIR/nord-iterm2
link_file "$LIB_DIR/nord-iterm2/src/xml/Nord.itermcolors" "$DOTFILES_DIR/iterm"
# }}}

echo_done repos
