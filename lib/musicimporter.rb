class MusicImporter
  def self.import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.create_from_filename(filename) }
  end

def files 
  @files = files 
end

  def initialize()
end
end
