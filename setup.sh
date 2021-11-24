# Copy zshrc from dotfiles
ln -sf ~/dotfiles/zshrc ~/.zshrc

# Install minidev from local (if available) or remote
if [ -f /opt/dev/dev.sh ]; then
    source /opt/dev/dev.sh
elif [ -f ~/src/github.com/burke/minidev/dev.sh ]; then
    source ~/src/github.com/burke/minidev/dev.sh
fi
