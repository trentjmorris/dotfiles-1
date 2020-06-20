src="$DOTFILES_DIR/amphetamine/com.if.Amphetamine.plist"
dest="$HOME/Library/Containers/com.if.Amphetamine/Data/Library/Preferences/com.if.Amphetamine.plist"
if [ -e $dest ]; then
  mv "$dest" "$dest.backup" > /dev/null 2>&1
  echo_info "Existing Amphetamine preferences backed up to '$(basename "$dest").backup'."
fi
cp -iv $src $dest > /dev/null 2>&1
echo_ok "Amphetamine preferences copied."
unset src dest
