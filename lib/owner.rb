class Owner
  
  attr_reader :species, :name
  attr_accessor :pets, :cats, :dogs
 
 @@all = []
 
 
 def initialize(name)
   @name = name
   @species = "human"
   @@all << self 
 end
  
  def self.all
    @@all
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  
  
  
end