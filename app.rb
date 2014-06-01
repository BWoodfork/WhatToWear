$: << File.expand_path(File.dirname(__FILE__)) + '/lib'
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each {|file| require file }

require 'sinatra/base'
require 'sinatra/twitter-bootstrap'
require 'settings'

class App < Sinatra::Base
  register Sinatra::Twitter::Bootstrap::Assets

  use Rack::CommonLogger

  enable :inline_templates

  get '/' do
    erb '/welcome'.to_sym
  end
end
