#!/bin/bash
set -eu
set -o pipefail

branch=${PR_HEAD}
echo "Branch name is: $branch"
if [[ "$branch" != dependabot/*/yarn-* ]]; then
  echo "not a dependabot yarn pull request"
  exit 1
fi

version="${branch#*yarn-}"
tarball="v${version}.tar.gz"

echo "downloading yarn v${version} from github"
wget "https://github.com/yarnpkg/yarn/archive/$tarball"

echo "extracting yarn"
tar -xf "$tarball"
mv "yarn-${version}" yarn
