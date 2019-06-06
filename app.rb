require 'sinatra/base'

# attr_reader :peeps

class Chitter < Sinatra::Base

  get '/chitter' do
    @peeps = [
      "my first peep",
      "my second peep",
      "my third peep"
    ]
    erb :peeps
    
  end


  run! if app_file == $0
end
