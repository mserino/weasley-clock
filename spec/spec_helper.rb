ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require './app/server.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end
