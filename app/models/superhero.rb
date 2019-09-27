class SuperHero 

  attr_accessor :name, :power, :biography 
  
  @@all = []
  
  def initialize(params)
    @name = name 
    @power = power 
    @biography = biography
    @@all << self
  end
  
  def self.all 
    @@all
  end

end