class Post

    @@all = []
    attr_accessor :title, :author

    def initialize(post_title)
        @title = post_title
        @@all << self
    end

    def self.all
        @@all 
    end

    def author_name
        self.author.name if self.author
    end

    

end