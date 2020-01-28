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
    item = Cart.new (item: params[:item]) 
    
    @items = Cart.all  
    
    erb :view_cart
  end 
  
end