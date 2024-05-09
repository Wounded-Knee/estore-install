1. [Download this repository](https://github.com/Wounded-Knee/estore-install/archive/refs/heads/master.zip)
2. Run [install.sh](https://github.com/Wounded-Knee/estore-install/blob/master/install.sh)
3. Observe errors:

```
Building Contentful App... 
yarn run v1.22.19
warning ../../package.json: No license field
$ tsc && vite build
src/locations/Field.tsx:20:26 - error TS2322: Type 'import("/home/sfalken/repodepot/fiverr/fiverr-estore-contentful/node_modules/@contentful/app-sdk/dist/types/api.types").FieldAppSDK' is not assignable to type 'import("/home/sfalken/repodepot/fiverr/fiverr-field-editors/node_modules/@contentful/app-sdk/dist/types/api.types").FieldAppSDK'.
  Type 'FieldAppSDK' is not assignable to type 'BaseAppSDK<KeyValueMap, KeyValueMap, never>'.
    The types of 'cmaAdapter.makeRequest' are incompatible between these types.
      Type 'import("/home/sfalken/repodepot/fiverr/fiverr-estore-contentful/node_modules/@contentful/app-sdk/node_modules/contentful-management/dist/typings/common-types").MakeRequestWithUserAgent' is not assignable to type 'import("/home/sfalken/repodepot/fiverr/fiverr-field-editors/node_modules/contentful-management/dist/typings/common-types").MakeRequestWithUserAgent'.
        Types of parameters 'opts' and 'opts' are incompatible.
          Type 'MROpts<"AppDefinition", "get", true>' is not assignable to type 'MROpts<"Http", "get", true>'.
            Type 'MROpts<"AppDefinition", "get", true>' is not assignable to type '{ entityType: "Http"; action: "get"; }'.
              Types of property 'entityType' are incompatible.
                Type '"AppDefinition"' is not assignable to type '"Http"'.

20   return <RichTextEditor sdk={sdk} isInitiallyDisabled={true} />;
                            ~~~

  ../fiverr-field-editors/packages/rich-text/dist/types/RichTextEditor.d.ts:5:5
    5     sdk: FieldAppSDK;
          ~~~
    The expected type comes from property 'sdk' which is declared here on type 'IntrinsicAttributes & ConnectedProps & { isInitiallyDisabled: boolean; }'


Found 1 error in src/locations/Field.tsx:20

error Command failed with exit code 2.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
```
1. Fix the errors.
   - You may change any file in these two repositories to fix the error.
     - [https://github.com/Wounded-Knee/estore-contentful](https://github.com/Wounded-Knee/estore-contentful)
     - [https://github.com/Wounded-Knee/estore-install](https://github.com/Wounded-Knee/estore-install)
   - Do not change any files in these repositories.
     - [https://github.com/contentful/rich-text](https://github.com/contentful/rich-text)
     - [https://github.com/contentful/field-editors](https://github.com/contentful/field-editors)
