#!/bin/bash

# تحميل وتثبيت nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.nvm/nvm.sh

# تثبيت Node.js
nvm install 16.0.0
nvm use 16.0.0
