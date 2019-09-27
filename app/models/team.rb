class Team 

  attr_accessor :name, :motto

  @@all = []
  
  def initialize(params)
    @name = name 
    @motto = motto
    @@all << self
  end
  
  def self.all 
    @@all
  end



end