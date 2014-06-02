$: << File.expand_path(File.dirname(__FILE__)) + '/../'
$: << File.expand_path(File.dirname(__FILE__)) + '/../lib/'

require 'app'
require 'one_piece_outfit'
require 'outfit_options'
require 'rack/test'
require 'three_piece_outfit'
require 'two_piece_outfit'

require 'pry'

def app
  App
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
