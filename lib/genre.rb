class Genre
  attr_accessor :name

  def songs
    Song.songs_with_genre(self)
  end

  def artists
    Artist.artist_with_genre(self)
  end

end