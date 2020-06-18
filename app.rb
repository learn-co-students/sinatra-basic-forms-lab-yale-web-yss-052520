require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

    set :views, "views"

    get '/' do
    erb :index
    end

    get '/new' do 
        erb :create_puppy
    end

    post '/puppy' do 
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        # binding.pry 
        # 0
        erb :display_puppy
    end

end
