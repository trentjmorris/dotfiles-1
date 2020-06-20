echo_user "Please sign in to the App Store with your Apple ID to continue installations..\n Press any key to continue, or [Ctrl+C] to abort."

# open App Store
open -a "App Store"

read -n 1 action

echo "Good you pressed a key!"

# close App Store
osascript -e 'quit app "App Store"'

# Install mac applications
function mas_install () {
  app_name="$1"
  app_id="$2"

  if mas list | grep $app_id > /dev/null 2>&1; then
    echo_skip "$app_name is already installed"
  else
    if mas install $app_id > /dev/null 2>&1; then
      echo_ok "$app_name has been installed"
    else
      echo_fail "$app_name could not be installed"
    fi
  fi
}

sleep 1

if [[ $(mas account) == 'trent@trentmorris.com' ]]  > /dev/null 2>&1;
then
  echo_ok "Successfully signed into the App Store."
  mas_install "Amphetamine" 937984704
  mas_install "Bear" 1091189122
  mas_install "Deliveries" 924726344
  mas_install "Good Notes" 1444383602
  mas_install "Magnet" 441258766
  mas_install "Pages" 409201541
  mas_install "Noto" 1459055246
  mas_install "Numbers" 409203825
  mas_install 'Snippets Lab' 1006087419
  mas_install 'Spark' 1176895641
  mas_install 'Things' 904280696
  echo_ok "App Store apps have been installed"
else
  echo_fail "Cannot install AppStore apps. It's possible you're not signed into your account\n\
    Please sign in by running:  \e[94m mas signin <your_email_address> \e[0m \n\
  Then run this script again:  \e[94m sh $DOTFILES_DIR/macos/appstore.sh \e[0m\n"
fi

# 1Password
sudo xattr -r -d com.apple.quarantine "/Applications/1Password 7.app"
echo_ok "Removed 1Password from macOS quarantine"

echo_done "apps"
