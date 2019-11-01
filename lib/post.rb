class Post

    attr_accessor :title 

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end 

    def self.all
        @@all 
    end

    def author=(author)
        @author = author
    end

    def author
        @author
    end 

    def author_name
        return nil if !self.author 
        return self.author.name
    end 

end 