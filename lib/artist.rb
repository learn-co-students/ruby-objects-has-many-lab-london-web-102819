require_relative 'song.rb'

class Artist

    attr_accessor :name
    attr_writer :songs
    @@song_count = 1
    

    def initialize(artist_name)
        @name = artist_name
    end

    def add_song(song)
        song.artist = self
        @@song_count += 1
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end

    def self.song_count
        @@song_count
    end

    def songs
        @songs = Song.all.select{|song| song.artist == self}
    end


end




