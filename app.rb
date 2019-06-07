require 'sinatra/base'
require './lib/peeps'
# attr_reader :peeps

class Chitter < Sinatra::Base

  get '/chitter' do
    @peeps = peeps.all

    # [
    #   "my first peep",
    #   "my second peep",
    #   "my third peep"
    # ]
    erb :peeps

  end


  run! if app_file == $0
end
