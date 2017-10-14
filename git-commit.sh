#!/bin/bash -e
commit_message="$1"
commit_message="$2"
commit_message="$3"
git add . -A
git commit -m "$commit_message"
git push
