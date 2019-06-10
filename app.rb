require 'sinatra/base'
require './lib/peeps'
# attr_reader :peeps

class Chitter < Sinatra::Base

  get '/chitter' do
    @peeps = Peeps.all
    erb :peeps

  end


  run! if app_file == $0
end
