const webpack = require('webpack')
const { basename, dirname, join, relative, resolve } = require('path')

const appConfig = require('./app-config')

module.exports = {


  plugins: appConfig.shared.plugins.concat([
    new webpack.EnvironmentPlugin(JSON.parse(JSON.stringify(env))),
    new ExtractTextPlugin(env.NODE_ENV === 'production' ? '[name]-[hash].css' : '[name].css'),
    new ManifestPlugin({
      publicPath: output.publicPath,
      writeToFileEmit: true
    })
  ]),

}