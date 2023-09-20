npm init -y
npm install husky --save-dev
npm install ts-node --save-dev
npm pkg set scripts.prepare="husky install"
npm run prepare
npx husky add .husky/pre-commit "npm run validate"
git clone https://github.com/awslabs/landing-zone-accelerator-on-aws.git
cd landing-zone-accelerator-on-aws/source
npm install
cd ../..
npm pkg set scripts.validate="ts-node $PWD/landing-zone-accelerator-on-aws/source/packages/@aws-accelerator/accelerator/lib/config-validator.ts $PWD"
echo "setup.sh\ntest\n.husky\nnode_modules\nlanding-zone-accelerator-on-aws\npackage-lock.json\npackage.json" >> .gitignore