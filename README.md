# Yarn Lib

As of v1.0, Yarn is distributed as a single bundled .js file, which means it
can no longer be used as a library.

This repo automatically generates builds of yarn that may be used as libraries
and pushes them to the @dependabot/yarn-lib package on npm.

## Steps to Rotate the NPM Access Token  
1. Login to the npmjs registry with GitHub work email and password and go to the [Access Tokens](https://www.npmjs.com/settings/ankithoney/tokens) section. 

   Note: If you do not see `Dependabot org` associated with your npmjs registry account then reach out to your team members in the slack channel [#dependabot-updates-team](https://github.slack.com/archives/C01BKB7EVQX) to send you an invite to join the dependabot org.

2. Click on `Generate new Access Tokens` button and copy the token.
   <img width="1653" alt="Screen Shot 2022-08-15 at 5 53 45 PM" src="https://user-images.githubusercontent.com/5500812/184764649-abb19ba5-fcac-465d-a7f6-44f05d5cb458.png">


3. Update the [NPM_TOKEN](https://github.com/dependabot/yarn-lib/settings/secrets/actions) with the newly generated token in step 2.
   <img width="1328" alt="Screen Shot 2022-08-15 at 5 55 21 PM" src="https://user-images.githubusercontent.com/5500812/184765571-b4981f8d-ef87-4252-a08a-d5eca34a4e38.png">

4. Follow the [guide](https://github.com/github/dependabot-updates/blob/main/docs/dependabot-vault-secrets.md) to update the secret `dependabot_npmjs_org_token` in the vault with the newly generated token in step 2.
