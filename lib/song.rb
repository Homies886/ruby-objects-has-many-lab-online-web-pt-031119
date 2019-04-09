class Song
  
  attr_accessor :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self.name
  end
  
  def all
    @@all
  end
  
  
  
  
  
end