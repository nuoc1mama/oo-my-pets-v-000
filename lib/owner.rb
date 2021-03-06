require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  OWNERS=[]


  def initialize(name)
    @@count = 0
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@count =+ 1
    OWNERS<<self
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs]<<Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, pet|
      pet.each do |o|
        o.mood = "nervous"
      end
      pet.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
