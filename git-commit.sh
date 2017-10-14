#!/bin/bash -e
#add your commit messages after the script example, "bash git-commit.sh this is easy"
commit_message1="$1"
commit_message2="$2"
commit_message3="$3"
git add . -A
git commit -m "$commit_message1 $commit_message2 $commit_message3"
git push
