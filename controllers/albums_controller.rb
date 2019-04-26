require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')
also_reload('./models/*')

get '/' do
  @albums = Album.all
  erb(:index)
end
