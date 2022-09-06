class Movie < ActiveRecord::Base
    def self.create_with_title title
      Movie.create(title: "#{title}")
    end
   
    def self.first_movie
        Movie.find_by(id:first)
    end
    
    #lucky guess? how does this work?
    def self.last_movie
    Movie.find_by(id:last)
    end
    
    def self.movie_count
    Movie.count
    end
    
    def self.find_movie_with_id id
    Movie.find_by(id:id)
    end

    def self.find_movie_with_attributes attrib
    Movie.find_by(attrib)
    end

    def self.find_movies_after_2002
    Movie.where("release_date > ?", 2002)
    end

    def update_with_attributes attribute
    self.update(attribute)
    end

    def self.update_all_titles value
    Movie.update({title: "#{value}"})
    end

    def self.delete_by_id id
    Movie.destroy(id)
    end

    def self.delete_all_movies
    Movie.destroy_all
    end
end