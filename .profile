# Hack home
export HOME="/home"

# Switch to hacked home folder
cd

# Execute .bashrc
if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    if [ -f ~/.bashrc ]; then
      . ~/.bashrc
    fi
  else
    PS1='$ '
  fi
fi
