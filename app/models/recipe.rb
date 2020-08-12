class Recipe

    attr_reader :name
    attr_accessor :description
    @@all = []
    
    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def menu_items
        MenuItem.all.select do |item|
            item.recipe == self
        end
    end
    
    def restaurants 
        menu_items.map do |item|
            item.restaurant
        end
    end

    def self.all
        @@all
    end 

end
