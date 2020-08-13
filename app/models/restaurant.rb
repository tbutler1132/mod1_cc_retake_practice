class Restaurant

    attr_accessor :owner, :name, :star_rating
    @@all = []
    
    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def menu_item
        MenuItem.all.select do |item|
            item.restaurant ==  self
        end
    end

    def recipes
        menu_item.map do |item|
            item.recipe 
        end
    end
    
    def self.all
        @@all
    end 

end