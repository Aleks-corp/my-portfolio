
set -e

npm run build

cd dist
cp index.html 404.html

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/Aleks-corp/my-portfolio.git main:gh-pages

cd -