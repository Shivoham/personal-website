#!/bin/sh

DIR=$(dirname "$0")

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"

rm -rf public

echo "Checking out gh-pages branch into public"

git worktree prune
git worktree add -B gh-pages public origin/gh-pages

echo "Generating site"

hugo

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages" && git push origin gh-pages && cd ..
