class Artist
  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @@artists << self
  end

  def self.count
    @@artists.length
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  def songs_count
    @songs.length
  end

  def add_song(song)
    @songs = []
    @songs << song
    @genres = []
    @genres << song.genre
  end

end