require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
end

  post '/checkout' do
    session["item"] = @params[:"item"]
    @session = session

    Item.new(item[:name])
    @item=Item.all

end

get '/' do

erb :index
end
end
