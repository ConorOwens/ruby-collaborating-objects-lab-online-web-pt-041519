class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song = Song.new
    @song = []
    @songs << song 
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    if artist == nil 
      artist = Artist.new(name)
    end
    artist 
  end
  
end