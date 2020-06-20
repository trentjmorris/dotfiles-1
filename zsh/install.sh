#!/usr/bin/env bash

# add ZSH to list of accepted shells
if grep -Fxq "/usr/local/bin/zsh" /etc/shells > /dev/null 2>&1; then
	echo_skip "ZSH is already in the list of accepted shells"
else
	# If not found
	sudo sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
	if grep -Fxq "/usr/local/bin/zsh" /etc/shells > /dev/null 2>&1; then
		echo_ok "ZSH added to list of accepted shells"
	else
		echo_fail "ZSH could not be added to list of accepted shells."
	fi
fi

# set ZSH as the default shell
if echo $SHELL | grep /bin/bash > /dev/null 2>&1; then
	chsh -s $(which zsh)
	echo_ok "ZSH is now the default shell"
else
	echo_skip "ZSH is already the default shell"
fi

# symlink pure-prompt & async files into newly created zsh directory
ln -sf "$LIB_DIR/pure/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
ln -sf "$LIB_DIR/pure/async.zsh" /usr/local/share/zsh/site-functions/async

echo_done "zsh"
