class SuperHero 

  attr_accessor :name, :power, :biography 
  
  @@all = []
  
  def initialize 
    @@all << self
  end
  
  def self.all 
    @@all
  end

end