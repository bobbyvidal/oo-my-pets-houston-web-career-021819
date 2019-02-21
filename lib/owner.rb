require 'cat.rb'
require 'dog.rb'
require 'fish.rb'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  

  @@all = []

  def initialize(species = "human")
    @species = species
    self.pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.count 
    @@all.size
  end

  def self.reset_all
    @@all = []
  end


  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish

  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog

  end

  def walk_dogs 
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets[:fishes].each do |pet|
      pet.mood = "nervous"
    end
    self.pets[:dogs].each do |pet|
      pet.mood = "nervous"
    end
    self.pets[:cats].each do |pet|
      pet.mood = "nervous"
    end
    
    self.pets = {fishes: [], cats: [], dogs: []} 
  end

  def list_pets
    return "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end


end

