require 'pry'
class Song
    attr_accessor :name, :artist

    @@all=[]

    def initialize(name)
    @artist = artist
    @name = name
    @@all<<self
    end

    def self.all
        @@all
        
    end
    
    def self.new_by_filename(file_name)
        name = file_name.split(" - ")
        song = self.new(name[1])
        song.artist = Artist.find_or_create_by_name(name[0])
        @@all << song
        return song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end 
    end