class Cart 
  
  attr_accessor :item 
  
  @@all = []
  
  def initalize(item)
    @item = params[:item] 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 

    