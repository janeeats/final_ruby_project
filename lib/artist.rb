class Artist
  attr_accessor :name, :songs, :genres

  @artists = []

  def initialize
    @artists << self
    @songs = []
    @genres = []
  end

  def self.count
    @artists.length
  end

  def self.reset_artists
    @artists = []
  end

  def self.all
    @artists
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
    self.add_genre(song)
    song.genre.artists << self unless song.genre.artists.include?(self)
  end

  def self.artist_with_genre(genre)
    a_genres_artists = []
    @artists.each do |artist|
      a_genres_artists << artist if (artist.songs.select {|song| song.genre == genre}).length > 0
    end
    a_genres_artists
  end

end