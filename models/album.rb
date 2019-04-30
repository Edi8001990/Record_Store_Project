require_relative('../db/sql_runner')

class Album
 attr_accessor :album_title, :quantity, :year_of_issue, :artist_id
 attr_reader :id

 def initialize(options)
   @id = options['id'].to_i if options['id']
   @album_title = options['album_title']
   @quantity = options['quantity'].to_i
   @year_of_issue = options['year_of_issue'].to_i
   @artist_id = options['artist_id'].to_i
end

def save()
  sql = "INSERT INTO albums (album_title, quantity, year_of_issue, artist_id)
  VALUES ($1, $2, $3, $4) RETURNING id;"
  values = [@album_title, @quantity, @year_of_issue, @artist_id]
  result = SqlRunner.run(sql, values)
  id = result.first['id']
  @id = id
end

def update()
  sql = "UPDATE albums SET (album_title, quantity, year_of_issue, artist_id) =
  ($1, $2, $3, $4) WHERE id = $5;"
  values = [@album_title, @quantity, @year_of_issue, @artist_id, @id]
  SqlRunner.run(sql, values)
end




def self.find(id)
  sql = "SELECT * FROM albums WHERE id = $1;"
  values = [id]
  result = SqlRunner.run(sql, values).first
  album = Album.new(result)
  return album
end




def artist()
  artist = Artist.find(@artist_id)
  return artist
end



def self.all()
  sql = "SELECT * FROM albums;"
  album_data = SqlRunner.run(sql)
  albums = album_data.map{|album| Album.new(album)}
  return albums
end


def delete()
  sql = "DELETE FROM albums WHERE id = $1;"
  values = [@id]
  SqlRunner.run(sql, values)
end




end
