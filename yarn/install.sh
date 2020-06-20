if [ -f ~/package.json ]; then
  cd $HOME && sudo yarn install > /dev/null 2>&1;
  while [ ! -e ~/.node_modules/eslint ];
  do
    sleep 1
  done
  echo_ok "Installed yarn packages in home directory"
else
  echo_fail "Yarn install failed. Could not locate 'package.json' in home directory."
fi
