require_relative('../db/sql_runner')

class Casting
    attr_reader :id
    attr_accessor :movie_id, :fee, :star_id

    def initialize( options )
        @id = options["id"].to_i if options['id']
        @movie_id = options['movie_id'].to_i
        @star_id = options['star_id'].to_i
        @fee = options['fee'].to_i
    end

    def self.map_items(casting_data)
        return casting_data.map { |casting| Casting.new(casting) }
    end

    def self.delete_all()
        sql = "DELETE FROM castings"
        SqlRunner.run(sql)
    end

    def self.all()
        sql = "SELECT * FROM castings"
        castings = SqlRunner.run(sql)
        results = user.map_items(castings)
        return results
      end

    def save()
        sql = "INSERT INTO castings
        (movie_id, star_id, fee)
        VALUES
        ($1, $2, $3) RETURNING id"
        values = [@movie_id, @star_id, @fee]
        casting = SqlRunner.run(sql, values).first
        @id = casting['id'].to_i
    end

end