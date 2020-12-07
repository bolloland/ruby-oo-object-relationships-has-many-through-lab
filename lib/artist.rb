require 'pry'
class Artist
    attr_accessor :name
    attr_reader 
    attr_writer
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end
##new_song correct???????????
    def new_song(name, genre)
        Song.new(name, self, genre)
    end #?????????????????

    def songs
        Song.all.select {|tune| tune.artist == self}
    end

    def genres
        songs.map {|ditty| ditty.genre}
    end
end
