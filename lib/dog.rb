class Dog
    @@all = []
    @@names = []
    attr_accessor :name

    def initialize(name)
        @name = name
        self.save
        @@names << @name
    end

    def self.all
        @@all
    end
    
    def self.print_all
       puts @@names[0..2]
    end 

    def self.clear_all
        @@all = []
    end
    
    def save
        @@all << self 
    end
end