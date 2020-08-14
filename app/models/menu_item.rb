class MenuItem

    attr_accessor :price
    attr_reader :recipe, :restaurant
    @@all = []
    
    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @@all << self
    end

    def owner
        restaurant.owner
    end 
    
    def self.all
        @@all
    end 

    def self.most_expensive_item
        highest_price = MenuItem.all.map {|item| item.price}.max
        MenuItem.all.find do |item|
            item.price == highest_price
        end
    end

end