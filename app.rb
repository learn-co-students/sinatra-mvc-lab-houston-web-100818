require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
       erb :user_input 
    end 

    post '/piglatinize' do
        @words = PigLatinizer.new
        @user_phrase = params[:user_phrase]
        @words.piglatinize(@user_phrase)
    end  


end