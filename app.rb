$: << File.expand_path(File.dirname(__FILE__)) + '/lib'
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each {|file| require file }

require 'sinatra'
require 'settings'

configure do
  enable :sessions
  set :session_secret, "My session secret"
end

class App < Sinatra::Application

end
