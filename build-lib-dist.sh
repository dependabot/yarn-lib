#!/bin/bash
set -eu
set -o pipefail

# Build lib/ from src/
pushd yarn
yarn run build
popd

rm -rf dist
mkdir dist

cp yarn/package.json dist/
cp yarn/README.md dist/
cp yarn/LICENSE dist/

cp -r yarn/lib dist/lib

# Verify that it works as expected
ln -s yarn/node_modules node_modules
node -e 'require("./dist/lib/cli")' || exit 1

./update-dist-lib-manifest.js $(node -p "require('fs').realpathSync('dist/package.json')")

