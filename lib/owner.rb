class Owner
  
  attr_reader :species, :name
  attr_accessor :pets, :cats, :dogs
 
 @@all = []


 
 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
    @pets = {:dogs => [], :cats => []}
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
  
  def buy_cat(name_of_cat)
     @pets[:cats] << Cat.new(name_of_cat)
  end
  
  def buy_dog(name)
    
  end
  
  
end