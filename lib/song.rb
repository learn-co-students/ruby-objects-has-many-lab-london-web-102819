class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def artist_name
        artist.name if artist
    end 

    def songs
        Song.all.select {|song| song.artist == self}
    end


    def add_song(song)
        song.artist = self
    end 


end 
