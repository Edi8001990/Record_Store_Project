require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album')
require_relative('../models/artist')
also_reload('./models/*')




get '/artists' do
  @artists = Artist.all()
  
  erb(:'artist/artists')
end



get '/artist-new' do
  erb(:'artist/artist_new')
end

post '/artist-new' do
  Artist.new(params).save
  redirect to '/artists'
end


get '/artists/:id' do
  @artist = Artist.find(params['id'])
  erb(:'artist/edit_artist')
end

post '/artists/:id' do
  artist = Artist.new(params)
  artist.update
  redirect to "/artists"
end


post '/artists/:id/delete' do
  artist = Artist.find(params['id'])
  artist.delete
  redirect to '/artists'
end
