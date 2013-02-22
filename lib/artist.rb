class Artist
  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
    @genres = []
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
    #@songs.length
    self.songs.length
  end

  def add_genre(song)
    self.genres << song.genre
  end

  def add_song(song)
    self.songs << song
    if song.genre != nil
      self.add_genre(song)
      song.genre.artists << self unless song.genre.artists.include?(self)
    else
    end
  end

end