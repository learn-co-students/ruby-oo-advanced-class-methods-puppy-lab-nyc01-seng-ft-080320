# Add your code here

require 'pry'

class Dog
attr_accessor :name
@@all = []

def initialize(name)
    @name = name
    self.save   
end

def save
    @@all << self
end

def self.all
    @@all
end

def self.clear_all
    self.all.clear
end

def self.print_all
self.all.each { |ele| puts ele.name }
   
end



end