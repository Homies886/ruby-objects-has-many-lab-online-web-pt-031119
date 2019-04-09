class Author
  
  attr_accessor :name
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(name)
    @posts << name
    name.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
    @@post_count += 1
  end  
    
  def self.post_count
    @@post_count
  end  
  
end