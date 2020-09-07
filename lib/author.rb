class Author
  
  attr_accessor :name 
  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|title| self.author == self }
  end
  
  def add_post(phost)
    @posts << phost
    phost.author = self
    count+=1 
  end
  
  def add_post_by_title(title)
    phost = Post.new(title)
    add_post(phost)
  end
  
  
  
end 