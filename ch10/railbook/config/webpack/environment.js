const { environment } = require('@rails/webpacker')

// coffee
const coffee = require('./loaders/coffee')
environment.loaders.prepend('coffee', coffee)

// jquery
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)

module.exports = environment
