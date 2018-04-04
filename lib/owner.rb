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
  @dogs = []
  @fishes = []
  @cats = []
end

def say_species
  "I am a #{self.species}."
end

def pets
  pet_hash = {fishes: [], dogs: [], cats: []}
end

def buy_fish(name)
  new_fish = Fish.new(name)
  self.pets

end