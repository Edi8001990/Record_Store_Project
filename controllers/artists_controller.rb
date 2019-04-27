require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')
require_relative('../models/artist')
also_reload('./models/*')


get '/new' do
  @artists = Artist.all
  erb(:new)
end
