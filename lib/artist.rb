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
    if @@all.include?(name)
      @@all.find(name)
    else
      artist = Artist.new(name)
      artist.save
    end 
  end
  
end