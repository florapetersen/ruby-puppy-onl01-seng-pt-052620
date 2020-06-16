require 'pry'
class Dog
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    binding.pry
    @@all << self
  end

  def save
    @@all << self

  def self.all
    @@all
  end

  def self.print_all
    @@all.each do |dog|
      puts "#{dog}"
    end
  end
end
