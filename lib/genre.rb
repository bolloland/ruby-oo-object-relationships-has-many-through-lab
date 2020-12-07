require 'pry'
class Genre
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

    def songs
        Song.all.select {|tune| tune.genre == self}
    end

    def artists
        songs.map {|ditty| ditty.artist}
    end

end
