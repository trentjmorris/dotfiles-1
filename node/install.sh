function npm_install () {
  if npm list --global | grep "$1" > /dev/null 2>&1; then
    echo_skip "'$1' is already installed"
  else
    npm install -g "$1" --quiet > /dev/null 2>&1
    if npm list --global | grep "$1" > /dev/null 2>&1; then
      echo_ok "'$1' has been installed"
    else
      echo_fail "'$1' could not be installed"
    fi
  fi
}

if test $(which npm)
then
  npm_install gulp # automate dev tasks
  npm_install nodemon # monitor for changes and restart server
  npm_install prettier # code formatter (js, css, markdown, html, less, scss, etc.)
  npm_install write-good # prose linter (markdown, text, etc.)
fi
