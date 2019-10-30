require_relative('post.rb')


class Author

    attr_accessor :name, :posts
    @@post_count = 1

    def initialize(author_name)

        @name = author_name
        @posts = []

    end

    def add_post(post)
        post.author = self
        @posts << post
        @@post_count += 1
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        add_post(post)
    end

    def self.post_count
        @@post_count
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

end