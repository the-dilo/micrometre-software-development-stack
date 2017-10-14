#!/bin/bash -e
#pass your 3 arguments lke this example! bash git-commit.sh finished updatig configs
commit_message1="$1"
commit_message2="$2"
commit_message3="$3"
git add . -A
git commit -m "$commit_message1 $commit_message2 $commit_message3"
git push
