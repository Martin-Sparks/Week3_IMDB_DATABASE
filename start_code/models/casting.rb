require_relative('../db/sql_runner')

class Casting
    attr_reader :id
    attr_accessor :movie_id, :fee, :star_id

    def initialize( options )
        @id = options["id"].to_i if options['id']
        @movie_id = options['movie_id'].to_i
        @star_id = options['star_id'].to_i
        @fee = options['fee'].to_1
    end

end