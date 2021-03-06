#!/usr/bin/env bash
#
# http://RobertHernandez.io/
#
# Used to prep TravisCI Env

# Make sure NVM is up to date
if [ $CONTINUOUS_INTEGRATION ]; then
  echo "Building via Continuous Integration"
  touch ~/.bashrc
  rm -rf "$NVM_DIR"
  touch install_nvm.sh
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh > install_nvm.sh
  sh -e "./install_nvm.sh"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
  rm -f "./install_nvm.sh"
fi

# EOF

