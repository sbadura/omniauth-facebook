require 'bundler/setup'
require 'omniauth-instagram'
require './app.rb'

use Rack::Session::Cookie, secret: 'abc123'

use OmniAuth::Builder do
  provider :instagram, ENV['INSTAGRAM_APP_ID'], ENV['INSTAGRAM_APP_SECRET']
end

run Sinatra::Application
