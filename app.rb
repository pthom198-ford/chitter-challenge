require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/chitter' do
    "Chitter Homepage!"
  end


  run! if app_file == $0
end
