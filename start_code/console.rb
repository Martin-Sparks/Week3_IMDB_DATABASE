require_relative("models/casting")
require_relative("models/movie")
require_relative("models/star")

require('pry')

movie1 = Movie.new({"title" => "Forrest Gump", "genre" => "drama"})
movie2 = Movie.new({"title" => "Star Wars", "genre" => "Sci-fi"})


star1 = Star.new( {"first_name" => "Tom", "last_name" => "Hanks"} )






binding.pry
nil