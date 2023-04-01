#!/usr/bin/env sh

# abort on errors
set -e

# build
cd sites/2020 && npm run build && cd .. && cd ..

cp -R sites/2016 dist/2016
cp -R sites/2017 dist/2017
cp -R sites/2018 dist/2018
cp -R sites/2019 dist/2019
cp -R sites/2020/prod dist/2020
cp -R sites/2022 dist/2022

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'woozzie.com' > CNAME

git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:chriskfwoo/chriswoo-site.git master:gh-pages

cd -
