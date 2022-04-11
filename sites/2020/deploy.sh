#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

cp -R sites/2016 dist/2016
cp -R sites/2017 dist/2017
cp -R sites/2018 dist/2018
cp -R sites/2019 dist/2019
cp -R sites/2020 dist/2020

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'chriswoo.me' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:chriskfwoo/chriswoo-site.git master:gh-pages

cd -