# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add aliases
echo "bindkey '\e[A' history-search-backward" >> ~/.zshrc
echo "bindkey '\e[B' history-search-forward" >> ~/.zshrc

echo "alias emacs='emacs -nw'" >> ~/.zshrc

echo "alias g='git'" >> ~/.zshrc
echo "alias gc='git commit -v'" >> ~/.zshrc
echo "alias gd='git diff'" >> ~/.zshrc
echo "alias grbi='git rebase -i'" >> ~/.zshrc
echo "alias gst='git status'" >> ~/.zshrc

echo "alias sc='systemctl'" >> ~/.zshrc
echo "alias scf='systemctl list-units --failed'" >> ~/.zshrc
echo "alias jc='journalctl'" >> ~/.zshrc
echo "alias jcu='journalctl -u'" >> ~/.zshrc
echo "alias jcuf='journalctl -f -u'" >> ~/.zshrc

# Set emacs as the default git editor in place of vim
echo "git config --global core.editor 'emacs -nw'" >> ~/.zshrc

# Customize default oh-my-zsh prompt to indicate the current user
echo "PROMPT='%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜'" >> ~/.zshrc
echo "PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} %{$fg_bold[green]%}$(whoami)%{$reset_color%} $(git_prompt_info)'" >> ~/.zshrc
echo "export PROMPT" >> ~/.zshrc

source ~/.zshrc

# Install minidev from local (if available) or remote
if [ -f /opt/dev/dev.sh ]; then
    source /opt/dev/dev.sh
elif [ -f ~/src/github.com/burke/minidev/dev.sh ]; then
    source ~/src/github.com/burke/minidev/dev.sh
fi
