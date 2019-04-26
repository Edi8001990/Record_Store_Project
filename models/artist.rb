require_relative('../db/sql_runner')

class Artist
  attr_reader :id, :name, :surname

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @surname = options['surname']
  end








def save()
  sql = "INSERT INTO artists (name, surname)
        VALUES ($1, $2) RETURNING id;"

  values = [@name, @surname]
  result = SqlRunner.run(sql, values)
  id = result.first["id"]
  @id = id.to_i
end


def self.find(id)
  sql = "SELECT * FROM artists WHERE id = $1;"
  values = [id]
  result = SqlRunner.run(sql, values).first
  artist = Artist.new(result)
  return artist
end





def format_name
  return "#{@name} #{@surname}"
end



# def self.delete_all()
#   sql = "DELETE FROM artists;"
#   SqlRunner.run(sql)
# end

end
