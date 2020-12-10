if [ -d /usr/local/opt/zplug ]
then
  export ZPLUG_HOME=/usr/local/opt/zplug
else
  export ZPLUG_HOME=~/.zplug
fi

test -f $ZPLUG_HOME/init.zsh || return

source $ZPLUG_HOME/init.zsh

# Theme
zplug "dracula/zsh", as:theme

# Prompt
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme, lazy:false

# Install missing plugins
if ! zplug check; then
  zplug install
fi

# Source plugins and add commands to $PATH
zplug load
