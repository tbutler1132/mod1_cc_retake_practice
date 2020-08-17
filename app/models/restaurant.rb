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
        # CARYN SAYS: be careful of naming! technically the method is named wrong (missing a 's')
        MenuItem.all.select do |item|
            item.restaurant ==  self
        end
    end

    def recipes
        menu_item.map do |item|
            item.recipe 
        end
    end

    def has_dish?(recipe)
        recipes.include?(recipe)
    end

    def self.highest_rated
        # CARYN SAYS: this solution works! try out max_by to learn about an enumberable perfect for this case 
        highest_rating = Restaurant.all.map {|r| r.star_rating}.max
        Restaurant.all.find do |restaurant|
            restaurant.star_rating == highest_rating
        end
    end

    
    def self.all
        @@all
    end 

end