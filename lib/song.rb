class Song
  attr_accessor :genre, :name
  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def self.songs_with_genre(genre)
    a_genres_songs = []
    @@songs.each do |song|
      a_genres_songs << song if song.genre == genre
    end
    a_genres_songs
  end

end