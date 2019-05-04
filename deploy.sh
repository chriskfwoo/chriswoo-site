#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

cp public/2016/index.html dist/2016
cp public/2017/index.html dist/2017
cp public/2018/index.html dist/2018

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