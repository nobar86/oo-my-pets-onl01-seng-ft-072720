class Owner
  
  attr_reader :species, :name
  attr_accessor :pets, :cats, :dogs
 
 @@all = []


 
 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
   @cats = []
   @dogs =[]
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
  
  def buy_cat(name)
    @@all << self.buy_cat
    @cats << self
  end
  
  def buy_dog(name)
    
  end
  
  
end