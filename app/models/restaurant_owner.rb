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
        restaurants.map do |restaurant|
            restaurant.menu_item
        end
    end 

    def self.average_age
        total = RestaurantOwner.all.map do |owner|
            owner.age.to_f 
        end
        total.sum/total.length 
    end

    def sell_restaurant(restaurant, buyer)
        if self.restaurants.include?(restaurant)
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