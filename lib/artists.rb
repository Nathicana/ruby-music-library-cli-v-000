class Artist

  extend Concerns::Findable

  attr_accessor :name

  @@all = []

def initialize(name)
  @name = name
  @songs = []
end


def self.all
  @@all
end

def save
  @@all << self
end

def self.create(name)
  new_artist = self.new(name)
  new_artist.save
  new_artist
end

def add_song(song)
  @songs << song
 song.artist << self unless song.artist.include?(self)
    # tells new song that it belongs to an artist
end
end

def songs
@songs
end

def self.destroy_all
  @@all = []
end

def genres
  Genre.all.select do |genre|
    genre.artist == self
  end
end


end
