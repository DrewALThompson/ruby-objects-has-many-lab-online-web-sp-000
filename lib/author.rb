class Author
  
  attr_accessor :name 
  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|title| self.author == self}
  end
  
  def add_post(post)
    @post << post
    post.author = self
    count+=1 
  end
  
  def add_post_by_title(post)
  
  
  
end 