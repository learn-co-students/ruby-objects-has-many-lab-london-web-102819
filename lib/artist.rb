require "pry"

class Artist
  attr_reader :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.song_count
    Song.all.select { |s| s.artist != nil }.length
  end
end

0