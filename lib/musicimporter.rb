class MusicImporter
 attr_accessor :path

 def initialize(path)
   @path = path
end


  def self.import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.create_from_filename(filename) }
  end

def files
  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
end


end
