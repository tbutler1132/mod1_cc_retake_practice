class RestaurantOwner

    attr_accessor :name, :age
    @@all = []
    
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def restaurants
        Restaurant.all.select do |restaurant|
            restaurant.owner == self
        end
    end

    def menu_items 
        # CARYN SAYS: this works! one thing to notice is this will give you an array of arrays
        # can you find a method to help with flattening it / removing the nesting?
        restaurants.map do |restaurant|
            restaurant.menu_item
        end
    end 

    def self.average_age
        # CARYN SAYS: looks good! I like that you made it a float so the average would be a float too
        total = RestaurantOwner.all.map do |owner|
            owner.age.to_f 
        end
        total.sum/total.length 
    end

    def sell_restaurant(restaurant, buyer)
        if self.restaurants.include?(restaurant)
            # CARYN SAYS: searching for the restaurant is redundant / unnecessary because
            # `restaurant` is the whole restaurant instance 
            transfer = self.restaurants.find do |for_sale|
                for_sale == restaurant
            end
            transfer.owner = buyer
        end
    end
    
    def self.all
        @@all
    end 

end