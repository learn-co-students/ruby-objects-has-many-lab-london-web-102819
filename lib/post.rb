class Post
  attr_reader :title
  attr_accessor :author

  @@all = []
  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end
  
  def self.all
    @@all
  end

  def author_name
    if @author != nil
      @author.name
    end
  end

end