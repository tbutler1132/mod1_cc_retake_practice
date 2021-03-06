# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


arno = RestaurantOwner.new("Arno", 63)
luigi = RestaurantOwner.new("Luigi", 43)
sun_lee = RestaurantOwner.new("Sun", 32)

arnos = Restaurant.new(arno, "Arno's", 5)
luigis = Restaurant.new(luigi, "Luigi's", 3)
orchard = Restaurant.new(sun_lee, "The Orchard", 4)
arnos_la = Restaurant.new(arno, "NY Arno", 4)

pizza = Recipe.new("Pizza", "standard pizza")
chicken_francese = Recipe.new("Chicken Francese", "lemon chicken")
wonton_soup = Recipe.new("Wonton Soup", "soup with wontons")
chicken_fingers = Recipe.new("Chicken fingers", "for kids")
beef_tar_tar = Recipe.new("beef tar tar", "raw meat")

arno_pizza = MenuItem.new(arnos, pizza, 18.00)
luigi_pizza = MenuItem.new(luigis, pizza, 20.00)
luigi_chicken = MenuItem.new(luigis, chicken_francese, 22.00)
sun_lee_wonton_soup = MenuItem.new(orchard, wonton_soup, 12.00)
arno_la_pizza = MenuItem.new(arnos_la, pizza, 27.00)
arno_beef_tar_tar = MenuItem.new(arnos, beef_tar_tar, 52.00)

# CARYN SAYS: so much delicious food, I am officially hungry

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
