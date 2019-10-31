class Post
    @@all = [ ]
    def initialize (title)
        @title = title 
        save
    end
    def save
        @@all << self
    end

    def author=(author)
        @author = author
    end
    def author
        @author
    end

    def author_name
        if @author.nil?
            nil
        else
            @author.name
        end
    end
    def self.all 
        @@all
    end

    def title
        @title
    end

end
