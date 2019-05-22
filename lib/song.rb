class Song 
  
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end
  
  def self.new_by_filename(filename)
    name = filename.split(" - ")[0]
    artist = filename.split(" - ")[1]
    song = Song.new(name)
    artist = Artist.new(artist)
    song.artist = artist
  end 
  
end