# Add your code here
class Dog

    attr_accessor :name

    @@all = Array.new

    def initialize(name)
    @name = name    
    self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each do |e|
            puts e.name
        end
    end

    def save
        @@all.push(self)
    end

end