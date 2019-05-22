class Song 
  
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end
  
  def new_by_filename(filename)
    name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    Song.new(name)
  end 
  
end