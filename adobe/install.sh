# Illustrator
AI_DIR=$HOME/Library/Preferences/Adobe\ Photoshop\ CS6\ Settings
if [ -f "$AI_DIR" ]; then
  link_file "$DOTFILES_DIR/adobe/ai/Workspaces/MBA Workspace" "$AI_DIR/Workspaces/MBA Workspace"
  link_file "$DOTFILES_DIR/adobe/ai/Workspaces/Trent's Rad Workspace" "$AI_DIR/Workspaces/Trent's Rad Workspace"
  link_file "$DOTFILES_DIR/adobe/ai/Workspaces/Two-Monitor Workspace" "$AI_DIR/Workspaces/Two-Monitor Workspace"
  link_file "$DOTFILES_DIR/adobe/ai/Adobe Illustrator Prefs" "$AI_DIR/Adobe Illustrator Prefs"
else
  echo_fail "Illustrator not installed, cannot symlink preferences."
fi

# Photoshop
PS_DIR=$HOME/Library/Preferences/Adobe\ Photoshop\ CS6\ Settings
if [ -f "$PS_DIR" ]; then
  link_file "$DOTFILES_DIR/adobe/ps/Workspaces/Trent's Ultra Workspace" "$PS_DIR/Workshops"
  link_file "$DOTFILES_DIR/adobe/ps/Actions Palette.psp" "$PS_DIR/Actions Palette.psp"
  link_file "$DOTFILES_DIR/adobe/ps/Adobe Photoshop CS6 Prefs" "$PS_DIR/Adobe Photoshop CS6 Prefs"
  link_file "$DOTFILES_DIR/adobe/ps/Keyboard Shortcuts Primary" "$PS_DIR/Keyboard Shortcuts Primary"
  link_file "$DOTFILES_DIR/adobe/ps/Keyboard Shortcuts" "$PS_DIR/Keyboard Shortcuts"
else
  echo_fail "Photoshop not installed, cannot symlink preferences."
fi
