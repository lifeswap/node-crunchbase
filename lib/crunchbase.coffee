request = require('request').defaults jar: false

module.exports = class Crunchbase
  constructor: (@apiKey) ->

  getCompany: (permalink, callback) ->
    opts =
      method: 'GET'
      url: "http://api.crunchbase.com/v/1/company/#{permalink}.js"
      json: true
      qs: api_key: @apiKey
    request opts, (err, res, body) ->
      callback err, body

  getCompanies: (callback) ->
    opts =
      method: 'GET'
      url: "http://api.crunchbase.com/v/1/companies.js"
      json: true
      qs: api_key: @apiKey
    request opts, (err, res, body) ->
      callback err, body
