class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres_hash = Hash.new(0) # Set default value for nonexistent keys (so they're not nil)! https://ruby-doc.org/core-2.7.0/Hash.html
    @@genres.each do |genre|
      genres_hash[genre] += 1
    end
    genres_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each do |artist|
      artists_hash[artist] += 1
    end
    artists_hash
  end
end