class Song
    @@all = [ ] 
    # attr_accessor :artist #an instance variable artist= + artist
    def artist=(artist) #attr_accessor setter part
        @artist = artist
    end
    def artist #attr_accessor getter part
        @artist
    end
    #song.artist = drake _ relationship happens outside of the class! 
   def initialize (name)
    @name = name
    save
   end 
   def self.all
    @@all
   end
   def save
    @@all << self
   end
   def name 
    @name
   end

   def artist_name
    if @artist .nil?
        return nil
    else
        @artist.name 
    end
   end
end