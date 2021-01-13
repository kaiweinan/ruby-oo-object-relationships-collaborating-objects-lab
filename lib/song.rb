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
    
    def self.new_by_filename(filename)
        song = self.new
        binding.pry 
        song.artist= filename.split(" - ")[1]
        song
    
      end

    end