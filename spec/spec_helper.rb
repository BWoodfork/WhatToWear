$: << File.expand_path(File.dirname(__FILE__)) + '/../'
$: << File.expand_path(File.dirname(__FILE__)) + '/../lib/'

require 'app'
require 'rack/test'
require 'web_game_store'

require 'pry'

def app
  App
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end