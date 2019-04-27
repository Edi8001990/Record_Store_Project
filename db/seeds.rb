require_relative('../models/album')
require_relative('../models/artist')



artist1 = Artist.new({'name' => 'Stevie Wonder'})
artist2 = Artist.new({'name' => 'Michael Jackson'})
artist3 = Artist.new({'name' => 'Whitney Houston'})
artist1.save()
artist2.save()
artist3.save()


album1 = Album.new({'album_title' => 'Hotter than July', 'quantity' => 70, 'year_of_issue' => 1980, 'artist_id' => artist1.id})
album2 = Album.new({'album_title' => 'Characters', 'quantity' => 50, 'year_of_issue' => 1987, 'artist_id' => artist1.id})
album3 = Album.new({'album_title' => 'In Square Circle', 'quantity' => 20, 'year_of_issue' => 1985, 'artist_id' => artist1.id})

album4 = Album.new({'album_title' => 'Bad', 'quantity' => 150, 'year_of_issue' => 1987, 'artist_id' => artist2.id})
album5 = Album.new({'album_title' => 'Thriller', 'quantity' => 180, 'year_of_issue' => 1982, 'artist_id' => artist2.id})
album6 = Album.new({'album_title' => 'Dangerous', 'quantity' => 130, 'year_of_issue' => 1991, 'artist_id' => artist2.id})
album7 = Album.new({'album_title' => 'Invincible', 'quantity' => 80, 'year_of_issue' => 2001, 'artist_id' => artist2.id})
album8 = Album.new({'album_title' => 'HIStory: Past, Present and Future', 'quantity' => 50, 'year_of_issue' => 1995, 'artist_id' => artist2.id})

album9 = Album.new({'album_title' => 'Whitney Houston', 'quantity' => 80, 'year_of_issue' => 1985, 'artist_id' => artist3.id})
album10 = Album.new({'album_title' => 'Im Your Baby Tonight', 'quantity' => 70, 'year_of_issue' => 1990, 'artist_id' => artist3.id})
album11 = Album.new({'album_title' => 'My Love Is Your Love', 'quantity' => 50, 'year_of_issue' => 1998, 'artist_id' => artist3.id})
album12 = Album.new({'album_title' => 'Just Whitney', 'quantity' => 55, 'year_of_issue' => 2002, 'artist_id' => artist3.id})


album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()
album7.save()
album8.save()
album9.save()
album10.save()
album11.save()
album12.save()
