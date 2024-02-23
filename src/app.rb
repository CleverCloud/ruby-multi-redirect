# app.rb
require 'sinatra'
require 'httparty'

set :server, :puma

# Default to Hello, World!
get '/' do
  "Hello, World!"
end

# Return a JSON object
get '/json' do
  content_type :json
  { key: 'value',
    object: [
      { key1: 'value1' },
      { key2: 'value2' }
    ] 
  }.to_json
end

# Redirection to the PokeAPI website from /api
get '/api' do
  redirect 'https://pokeapi.co/', 307
end

# Transparent redirection to perdu.com website from /lost
get '/lost' do
  response = HTTParty.get('https://perdu.com')
  headers response.headers
  status response.code
  body response.body
end

# Non existing pages will return a 404 status code
not_found do
  status 404
  "Oups! Page not found."
end