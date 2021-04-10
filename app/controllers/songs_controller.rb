require 'sinatra/base'
class SongsController < ApplicationController
    enable :sessions
    


    get '/songs' do
        @songs = Song.all
        erb :'song/index' 
      end

end