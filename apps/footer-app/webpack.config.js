const { merge } = require("webpack-merge");
const singleSpaDefaults = require("webpack-config-single-spa-react-ts");
const packJson = require('./package.json')

module.exports = (webpackConfigEnv, argv) => {
  const [orgName, projectName] = packJson.name
  .split("/")
  .map((value) => value.replace("@", ""));

  const defaultConfig = singleSpaDefaults({
    orgName,
    projectName,
    webpackConfigEnv,
    argv,
  });

  return merge(defaultConfig, {
    // modify the webpack config however you'd like to by adding to this object
  });
};
