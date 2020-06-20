export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

export DOTFILES_DIR=$HOME/.dotfiles
export LIB_DIR=$DOTFILES_DIR/lib
export SRC_DIR=$DOTFILES_DIR/src
export VIM_DIR=$HOME/.vim
export VIM_TMP_DIR=$HOME/.vim_tmp
export EDITOR='vim'
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$VIM_TMP_DIR/.zsh_history

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

#  Plugins/Libraries {{{
# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s --aliases=false)"
# alias tips
source $LIB_DIR/alias-tips/alias-tips.plugin.zsh
# zsh-z (zsh optimized `z` alternative)
source $LIB_DIR/z/zsh-z.plugin.zsh
# syntax highlighting
source $LIB_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#  }}}

#  Housecleaning {{{
for file in $HOME/.bash_history $HOME/.bash_sessions $HOME/.hgignore_global $HOME/.subversion $HOME/.zsh_history $HOME/.gitflow_export
do
  if [ -e "$file" ]; then
    rm -rf "$file" 2> /dev/null
  fi
done
#  }}}

# vim:foldmethod=marker:foldlevel=0:set nowrap:set nolinebreak
