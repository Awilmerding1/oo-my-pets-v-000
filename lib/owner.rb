require 'pry'

class Owner
attr_accessor :name, :pets
attr_reader :species 

@@all = []

def self.all 
  @@all
end

def self.count 
  self.all.count
end

def self.reset_all 
  @@all.clear
end

def initialize(species)
  @species = species 
  @@all << self
  @pets = {fishes: [], dogs: [], cats: []}
end

def say_species
  "I am a #{self.species}."
end


def buy_fish(name)
  new_fish = Fish.new(name)
  self.pets[:fishes] << new_fish
end

def buy_cat(name)
  new_cat = Cat.new(name)
  self.pets[:cats] << new_cat
end

def buy_dog(name)
  new_dog = Dog.new(name)
  self.pets[:dogs] << new_dog
end

def walk_dogs
  self.pets[:dogs]
end

end