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

    def average_price
        total = menu_items.map do |item|
            item.price 
        end
        total.sum/total.length 
    end

    def highest_price
        menu_items.map do |item|
            item.price
        end.max
    end 

    def cheapest_restaurant
        cheapest = menu_items.map do |item|
            item.price
        end.min
       restaurant_instance = menu_items.find do |item|
            item.price == cheapest
        end
        restaurant_instance.restaurant
    end 

    def self.inactive
        Recipe.all.select do |recipe|
            recipe.menu_items.count == 0
        end
    end

    def self.all
        @@all
    end 

end
