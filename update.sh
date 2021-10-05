#!/bin/bash

source /home/ubuntu/.bashrc
nvm use v16.10.0

git pull
sh getData.sh
git add .
git commit -m "Auto update"
git push

docker run --rm --volume="$PWD:/srv/jekyll" jekyll/jekyll jekyll build

npm run deploy
