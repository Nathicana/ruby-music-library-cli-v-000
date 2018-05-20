class Song

  attr_accessor :name, :artist, :genre

  @@all = []

def initialize(name, artist = self.artist)
@name = name
@genre= (genre)

end

def self.find_or_create_by_name(name)
  self.find_by_name(name) ? self.find_by_name(name) : self.create(name)
end

def self.create(name)
  self.new(name).tap {|artist| artist.save}
end

def self.find_by_name(name)
self.all.find {|artist| artist.name == name}
end

def self.new_from_filename(filename)
  song = self.new
  song.title = filename.split(" - ")[1]
  song
end

def self.all
  @@all
end

def save
  @@all << self
end

def self.destroy_all
  @@all = []
end

def self.create(name)
  new_song = self.new(name)
  new_song.save
  new_song
end

def artist=(artist)
  @artist = artist
  if !artist.songs.include?(self)
    artist.add_song(self)
  end
end

def genre=(genre)
  @genre = genre
end

end
