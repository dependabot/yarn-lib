#!/usr/bin/env node

// Generates a `package.json` file for the Yarn library distribution

const fs = require('fs');
const packageManifestFilename = process.argv[2];
const packageManifest = require(packageManifestFilename);

packageManifest.name = '@dependabot/yarn-lib';
delete packageManifest.bin;

fs.writeFileSync(
  packageManifestFilename,
  JSON.stringify(packageManifest, null, 2) + '\n'
);
