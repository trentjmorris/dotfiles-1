XCODE_DIR="$HOME/Library/Developer/Xcode/UserData"

#Snippets
if ! [ -e "$XCODE_DIR/CodeSnippets" ]; then
   mkdir "$XCODE_DIR/CodeSnippets"
fi
cp -v "$DOTFILES_DIR/xcode/trents-snippets.codesnippets" "$XCODE_DIR/CodeSnippets/trents-snippets.codesnippets"

### Themes
if ! [ -e "$XCODE_DIR/FontAndColorThemes" ]; then
   mkdir "$XCODE_DIR/FontAndColorThemes"
fi
# One Dark
ln -s "$LIB_DIR/xcode-one-dark/One Dark.xccolortheme" "$XCODE_DIR/FontAndColorThemes"
# Dracula
ln -s "$LIB_DIR/xcode-dracula/Dracula.xccolortheme" "$XCODE_DIR/FontAndColorThemes"

# Key Bindings
if ! [ -e "$XCODE_DIR/Keybindings" ]; then
   mkdir "$XCODE_DIR/KeyBindings"
fi
cp -v "$DOTFILES_DIR/xcode/trents-bindings" "$XCODE_DIR/KeyBindings/trents-bindings"
sudo cp "$DOTFILES_DIR/xcode/IDETextKeyBindingSet.plist" "/Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Versions/A/Resources/IDETextKeyBindingSet.plist"
