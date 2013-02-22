class Genre
  attr_accessor :name, :songs, :artists
  
  def initialize
    @songs = []
    @artists = []
  end

 # @genres = []

 #  def self.all
 #    @genres
 #  end

 #  def self.reset_genres
 #    @genres = []
 #  end

 #  def initialize
 #    @songs = []  
 #    @artists = []
 #    self.class.all << self
 #  end

end