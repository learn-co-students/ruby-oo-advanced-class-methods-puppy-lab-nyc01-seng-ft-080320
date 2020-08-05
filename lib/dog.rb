class Dog
    
    @@all = [];

    attr_accessor :name;

    def initialize (name)
        @name = name;
        self.save;
    end

    def self.all
        @@all;
    end
    # omg i keep doing bracket notation for like dog[name] cuz JS and get super confused by the no method error lol!!
    def self.print_all
        @@all.each{|dog| puts dog.name} # we can also use self.all but I like @@all since were in the scope to do so.
    end
    # i think this is a local method and not a class mettod because we are invoking it during the init constructor
    # and I think self becomes the instance we are creating but im a bit confused.
    def save
        @@all << self;
    end

    def self.clear_all
        self.all.clear;
    end

end