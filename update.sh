#!/bin/bash

nvm use v16.10.0

git pull
sh getData.sh
git add .
git commit -m "Auto update"
git push

npm run deploy
