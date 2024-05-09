rm -rf ~/.config/yarn/link/*
rm -rf ./fiverr-rich-text
rm -rf ./fiverr-field-editors
rm -rf ./fiverr-estore-contentful
echo ''; echo -e "[44m Installing Husky globally... [0m";
npm i -g husky
echo ''; echo -e "[44m Installing Lerna globally... [0m";
npm i -g lerna
echo ''; echo -e "[37;42;1m Cloning Contentful Rich Text Monorepo... [0m";
echo "Repo: git@github.com:contentful/rich-text.git"
echo "Path: `pwd`/fiverr-rich-text"
git clone git@github.com:contentful/rich-text.git fiverr-rich-text
cd fiverr-rich-text
echo ''; echo -e "[44m Installing Contentful Rich Text Monorepo dependencies... [0m";
yarn
echo ''; echo -e "[30;46m Creating link for \"Rich Text Types\" <@contentful/rich-text-types>... [0m";
cd packages/rich-text-types
yarn link
cd ../../
cd ..
echo ''; echo -e "[37;42;1m Cloning Contentful Field Editors Monorepo... [0m";
echo "Repo: git@github.com:contentful/field-editors.git"
echo "Path: `pwd`/fiverr-field-editors"
git clone git@github.com:contentful/field-editors.git fiverr-field-editors
cd fiverr-field-editors
echo ''; echo -e "[44m Installing Contentful Field Editors Monorepo dependencies... [0m";
yarn
echo ''; echo -e "[30;46m Creating link for \"Rich Text Field Editor\" <@contentful/field-editor-rich-text>... [0m";
cd packages/rich-text
yarn link
cd ../../
echo ''; echo -e "[30;46m Utilizing yarn link \"Rich Text Types\" <@contentful/rich-text-types>... [0m";
yarn link @contentful/rich-text-types
cd ..
echo ''; echo -e "[37;42;1m Cloning Contentful App... [0m";
echo "Repo: git@github.com:Wounded-Knee/estore-contentful.git"
echo "Path: `pwd`/fiverr-estore-contentful"
git clone git@github.com:Wounded-Knee/estore-contentful.git fiverr-estore-contentful
cd fiverr-estore-contentful
echo ''; echo -e "[44m Installing Contentful App dependencies... [0m";
yarn
echo ''; echo -e "[30;46m Utilizing yarn link \"Rich Text Field Editor\" <@contentful/field-editor-rich-text>... [0m";
yarn link @contentful/field-editor-rich-text
cd ..
echo ''; echo -e "[30;47m Patching Contentful App... [0m";
cp -R ./changes/contentful/* fiverr-estore-contentful/
echo ''; echo -e "[30;47m Building Contentful Rich Text Monorepo... [0m";
cd fiverr-rich-text
yarn build
cd ..
echo ''; echo -e "[30;47m Building Contentful Field Editors Monorepo... [0m";
cd fiverr-field-editors
yarn build
cd ..
echo ''; echo -e "[30;47m Building Contentful App... [0m";
cd fiverr-estore-contentful
yarn build
cd ..
