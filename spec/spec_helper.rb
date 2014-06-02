$: << File.expand_path(File.dirname(__FILE__)) + '/../'
$: << File.expand_path(File.dirname(__FILE__)) + '/../lib/'

require 'app'
require 'outfit_options'
require 'rack/test'

require 'pry'

def app
  App
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
