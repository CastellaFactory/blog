#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

rm -rf public/post/*

# Build the project. 
# if using a theme, replace by `hugo -t <yourtheme>`
hugo -t bootstrap2hugo

# Go to Public dir
cd public

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date '+%Y/%m/%d - %H:%M'`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date '+%Y/%m/%d - %H:%M'`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

