class MusicImporter
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.create_from_filename(filename) }
  end
end
