#!/bin/bash
set -eu
set -o pipefail

branch="$(git rev-parse --abbrev-ref HEAD)"
git checkout master
git merge "$branch"
git push origin master
