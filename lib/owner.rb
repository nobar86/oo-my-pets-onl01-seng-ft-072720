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
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
   @dogs.each do |dog|
    dog.mood = "happy"
    end
  end
  
  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  
  
end