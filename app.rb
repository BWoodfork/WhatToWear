$: << File.expand_path(File.dirname(__FILE__)) + '/lib'
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each {|file| require file }

require 'sinatra/base'
require 'settings'

class App < Sinatra::Application
  get '/' do
    erb '/welcome'.to_sym
  end
end
