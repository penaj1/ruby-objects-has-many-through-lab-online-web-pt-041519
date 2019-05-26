class Song 
  
  attr_accessor :name, :artist, :genre
  
  ALL = []
  
  def initialize(name="", genre="", artist="")
    @name = name
    @genre = genre
    @artist = artist
    ALL << self
  end
  
  def self.all
    ALL
  end
  
  def genre
    @genre
  end
  
  def artist
    @artist 
  end
  
end