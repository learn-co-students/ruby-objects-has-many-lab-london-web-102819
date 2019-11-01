require "pry"

class Song
  attr_reader :name
  attr_accessor :artist

  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist != nil
      @artist.name
    end
  end

end