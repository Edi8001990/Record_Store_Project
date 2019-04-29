require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')
require_relative('../models/artist')
also_reload('./models/*')


get '/new' do
  @artists = Artist.all()
  erb(:new)
end

get '/artists' do
  @artists = Artist.all()
  erb(:artists)
end

get '/artist-new' do
  erb(:artist_new)
end

post '/artist-new' do
  Artist.new(params).save
  redirect to '/artists'
end


get '/artists/:id' do
  @artist = Artist.find(params['id'])
  erb(:edit_artist)
end

post '/artists/:id' do
  artist = Artist.new(params)
  artist.update
  redirect to "/artists"
end
