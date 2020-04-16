require_relative("models/casting")
require_relative("models/movie")
require_relative("models/star")

require('pry')

Movie.delete_all()
Star.delete_all()
Casting.delete_all()

movie1 = Movie.new({"title" => "Forrest Gump", "genre" => "drama"})
movie1.save()
movie2 = Movie.new({"title" => "Star Wars", "genre" => "Sci-fi"})
movie2.save()

star1 = Star.new( {"first_name" => "Tom", "last_name" => "Hanks"} )
star1.save()
star2 = Star.new( {"first_name" => "Mark", "last_name" => "Hamill"} )
star2.save()

casting1 = Casting.new( {"movie_id" => movie1.id, "star_id" => star1.id, "fee" => "100000"} )
casting1.save()

binding.pry
nil