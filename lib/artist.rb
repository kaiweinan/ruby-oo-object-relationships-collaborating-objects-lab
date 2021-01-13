class Artist
attr_accessor :name
@@all=[]
def initialize(name)
@name = name
@songs=[]
@@all<<self
end

def self.all
    @@all
end
def songs
    Song.all.select {|song| song.artist==self}
  
end
def add_song(song)
    @songs << song
   song.artist = self
end
def self.find_or_create_by_name(name)
    @@all.each do |artist|
        if artist.name = name
            return artist
        end
    end
    artist = self.new(name)
    artist
end

def print_songs
self.songs.each do |song|
    puts "#{song.name}"
end
end

end