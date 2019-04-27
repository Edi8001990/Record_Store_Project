require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')
require_relative('../models/artist')
also_reload('./models/*')

get '/albums' do
@all_albums =  Album.all()
erb(:index)
end


get '/albums/:id' do
  @album = Album.find(params['id'])
  erb(:show)
end


post '/albums' do
  Album.new(params).save
  redirect to '/albums'
end


post '/albums/:id/delete' do
  album = Album.find(params['id'])
  album.delete
  redirect to '/albums'
end
