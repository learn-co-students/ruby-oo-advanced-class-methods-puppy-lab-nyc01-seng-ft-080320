# Add your code here

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.save
  end

  def self.all
    @@all
  end

  def self.clear_all
    Dog.all.clear
  end

  def self.print_all
    Dog.all.map do |dog|
      puts dog.name
    end
  end

  def save
    @@all << self
  end

end