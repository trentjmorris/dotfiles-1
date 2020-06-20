# Make ~/Coding directory
if [ ! -e $HOME/Coding ]; then
	mkdir $HOME/Coding
  echo_ok "Created ~/Coding directory"
else
  echo_skip "Directory ~/Coding already exists"
fi
