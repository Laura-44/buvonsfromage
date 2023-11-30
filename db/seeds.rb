require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# USERS

CategorieDrink.destroy_all
Pairing.destroy_all
Match.destroy_all
Food.destroy_all
User.destroy_all
Drink.destroy_all
Category.destroy_all

puts "user"

user1 = User.create!(name: "Marion", email: "marion@email.com", password: "123456")
user2 = User.create!(name: "Rémy", email: "rémy@email.com", password: "456789")
user3 = User.create!(name: "Laura", email: "laura@email.com", password: "654321")

# DRINKS
puts "beer"

beer1 = Drink.create!(name: "Light", description: "Bière très rafraîchissante et désaltérante. Peu d'arômes, flaveurs courtes et faiblement sucrées.", strength: 4, fermentation: "Lager", color: "Blonde", flavor: "Maltée, céréale")
beer2 = Drink.create!(name: "Dunkel", description: "Ample et crémeuse. Notes de café, de mélasse et de cacao ", strength: 5, fermentation: "Lager", color: "Brune/Noire", flavor: "Torréfiée, epicée")
beer3 = Drink.create!(name: "Schwarzbier", description: "Goût prononcé tirant sur l'arôme de mélasse. Saveur de malt grillée, de café, de chocolat, de noisette et de levure.", strength: 5, fermentation: "Lager", color: "Brune/Noire", flavor: "Torréfiée, épicée")
beer4 = Drink.create!(name: "California Common", description: "Bière légèrement fruitée avec de franches notes maltées et toastées de céréales.", strength: 5, fermentation: "Lager", color: "Ambrée", flavor: "Torréfiée, herbacée")
beer5 = Drink.create!(name: "Hoppy lager", description: "Bière généreusement houblonnée qui se distingue par ses notes rafraîchissantes et fruitées.", strength: 6, fermentation: "Lager", color: "Blonde", flavor: "Maltée, céréale")

# PHOTOS BEERS
# puts "Photos"
# file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1700573434/istockphoto-971852206-612x612_nnpw24.jpg")
# beer1.photos.attach(io: file, filename: "Lune.png", content_type: "image/jpg")
# beer1.save

puts "wine"

wine1 = Drink.create!(name: "Light", description: "Bière très rafraîchissante et désaltérante. Peu d'arômes, flaveurs courtes et faiblement sucrées.", strength: 4, fermentation: "Lager", color: "Blonde", flavor: "Maltée, céréale")

# PHOTOS WINES
# puts "Photos"
# file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1700573434/istockphoto-971852206-612x612_nnpw24.jpg")
# wine1.photos.attach(io: file, filename: "Lune.png", content_type: "image/jpg")
# wine1.save

# CATEGORIES
category1 = Category.create!(name: "Bière")
category2 = Category.create!(name: "Vin")
category3 = Category.create!(name: "Fromage")
puts "categories"

# CATEGORIE_DRINKS
puts "categorie_drinks"

categorie_drink1 = CategorieDrink.create!(name: "Blonde", category_id: category1.id, drink_id: beer1.id)
categorie_drink2 = CategorieDrink.create!(name: "Brune/Noire", category_id: category1.id, drink_id: beer2.id)
categorie_drink3 = CategorieDrink.create!(name: "Ambrée", category_id: category1.id, drink_id: beer4.id)
# FOODS
puts "cheese"

cheese1 = Food.create!(name: "Brie de Meaux jeune", family: "Fromage à pâte molle à croute fleurie", description: "Moelleux et légèrement salé", category_id: category3.id, strength: "Standard", milk: "Vache", aging: "Jeune", origin: "Seine-et-Marne")
cheese2 = Food.create!(name: "Brie de Meaux vieux", family: "Fromage à pâte molle à croute fleurie", description: "Typé avec l'affinage", category_id: category3.id, strength: "Fort", milk: "Vache", aging: "Vieux", origin: "Seine-et-Marne")
cheese3 = Food.create!(name: "Neufchatel jeune", family: "Fromage à pâte molle à croute fleurie", description: "Franc, agréable, doux", category_id: category3.id, strength: "Standard", milk: "Vache", aging: "Jeune", origin: "Seine-et-Marne")
cheese4 = Food.create!(name: "Neufchatel vieux", family: "Fromage à pâte molle à croute fleurie", description: "Salé et lactique", category_id: category3.id, strength: "Fort", milk: "Vache", aging: "Vieux", origin: "Seine-et-Marne")
cheese5 = Food.create!(name: "Reblochon", family: "Fromage à pâte pressée non-cuite", description: "Saveur équilibré, ensemble doux et parfumé", category_id: category3.id, strength: "Session", milk: "Vache", aging: "Vieux", origin: "Savoie, Haute-Savoie")
cheese6 = Food.create!(name: "Saint-Nectaire", family: "Fromage à pâte pressée non-cuite", description: "Franc et légèrement salé", category_id: category3.id, strength: "Session", milk: "Vache", aging: "Vieux", origin: "Puy de Dôme")
cheese7 = Food.create!(name: "Bleu d'Auvergne", family: "Fromage à pâte persillé", description: "Saveur légèrement salée et texture fondante", category_id: category3.id, strength: "Fort", milk: "Vache", aging: "Vieux", origin: "Puy de Dôme")
cheese8 = Food.create!(name: "Roquefort", family: "Fromage à pâte persillé", description: "", category_id: category3.id, strength: "Saveur franche, fraîche, fine et prononcée", milk: "Brebis", aging: "Jeune", origin: "Aveyron")

# PHOTOS CHEESES
# puts "Photos"
# file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1700573434/istockphoto-971852206-612x612_nnpw24.jpg")
# cheese1.photos.attach(io: file, filename: "Lune.png", content_type: "image/jpg")
# cheese1.save

# MATCHES
puts "matches"

match1 = Match.create!(food_id: cheese1.id, drink_id: beer1.id)
match2 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)

# PAIRINGS
puts "pairings"

pairing1 = Pairing.create!(food_id: cheese3.id, drink_id: beer3.id, user_id: user1.id)
pairing2 = Pairing.create!(food_id: cheese4.id, drink_id: beer4.id, user_id: user2.id)

# USER-CATEGORIES
# puts "user-categories"

# CATEGORIE-DRINKS
# puts "categorie-drinks"
