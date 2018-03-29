require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index

  end

  post '/submitted' do
    erb :released
  end
end
