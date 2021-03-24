require 'sinatra/base'

class Application < Sinatra::Base 

    get '/' do
        "This is the root-page"
    end
  
    get '/about' do
      "What is this about?"
    end
  
    get '/welcome' do
        if params[:user].nil?
            redirect '/'
        else
            @user = params[:user]
            "Welcome #{@user}!"
        end
    end
end
  