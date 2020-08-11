class Owner
  
  attr_reader :species, :name
  attr_accessor :pets, :cats, :dogs
 
 @@all = []
 @@pets = {:dogs => [], :cats => []}
 
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
  
  def buy_cat
    @@pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog
     @@pets[:dogs] << Dog.new(dog)
  end
  
  
end