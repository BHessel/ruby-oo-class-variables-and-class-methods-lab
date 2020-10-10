require 'pry'

class Song

    
    attr_accessor :name, :artist, :genre 

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count
        @@count
    end
    
    def self.genres
        #binding.pry
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    # def self.genre_count
    #     genre_frequency = Hash.new(0)
    #     @@genres.each do |genre|
    #         if genre_frequency|genre|
    #             genre_frequency[genre] += 1
    #         else
    #             genre_frequency|genre| 
    #         end
    #     end

    #     return genre_count 

        #binding.pry

        #want to get rap => 2,  pop => 1
    end

    
    puts song = Song.new("song1", "green day", "punk")
    puts song2 = Song.new("song2", "nofx", "punk")
    puts song3 = Song.new("song3", "reel big fish", "ska")
    puts song4 = Song.new("song4", "gnr", "rock")

    #binding.pry

