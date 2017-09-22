#!/bin/bash
set -eu
set -o pipefail

echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" >> ~/.npmrc
cd dist
npm publish --access public
