require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :sessions_secret, "secret"
  end 
  
  get '/' do 
    
    erb :index 
  end 
  
  
  post '/checkout' do
    @session = session 
    item = params["item"] 
    @sessions[:item] = item 
    
    erb :view_cart
  end 
  
end