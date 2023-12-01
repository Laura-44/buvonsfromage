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

Pairing.destroy_all
Match.destroy_all
Food.destroy_all
CategorieDrink.destroy_all
Drink.destroy_all
Category.destroy_all
User.destroy_all

puts "user"

user1 = User.create!(name: "Marion", email: "marion@email.com", password: "123456")
user2 = User.create!(name: "Rémy", email: "rémy@email.com", password: "123456")
user3 = User.create!(name: "Laura", email: "laura@email.com", password: "123456")

# DRINKS
puts "beer"

# beer1 = Drink.create!(name: "Light", description: "Bière très rafraîchissante et désaltérante. Peu d'arômes, flaveurs courtes et faiblement sucrées.", strength: 4, fermentation: "Lager", color: "Blonde", flavor: "Maltée, céréale")
# beer2 = Drink.create!(name: "Dunkel", description: "Ample et crémeuse. Notes de café, de mélasse et de cacao ", strength: 5, fermentation: "Lager", color: "Brune/Noire", flavor: "Torréfiée, epicée")
# beer3 = Drink.create!(name: "Schwarzbier", description: "Goût prononcé tirant sur l'arôme de mélasse. Saveur de malt grillée, de café, de chocolat, de noisette et de levure.", strength: 5, fermentation: "Lager", color: "Brune/Noire", flavor: "Torréfiée, épicée")
# beer4 = Drink.create!(name: "California Common", description: "Bière légèrement fruitée avec de franches notes maltées et toastées de céréales.", strength: 5, fermentation: "Lager", color: "Ambrée", flavor: "Torréfiée, herbacée")
# beer5 = Drink.create!(name: "Hoppy lager", description: "Bière généreusement houblonnée qui se distingue par ses notes rafraîchissantes et fruitées.", strength: 6, fermentation: "Lager", color: "Blonde", flavor: "Maltée, céréale")
beer1 = Drink.create!(name: "Witbier", description: "Bière blanche d'origine belge, constituée de malt de froment, d'orge et d'épices (écorce d'orange et coriandre).", strength: "<4% ABV", fermentation: "Ale", color: "Blanche", flavor: "Robe trouble et une aromatique sur les céréales, les épices et une finale citronnée.")
beer2 = Drink.create!(name: "Gueuze", description: "Surnommée 'Champagne de Bruxelles'. Bière issue d'un savant mélange de lambics (=bière issue d'une fermentation spontanée de part un ensemencement naturel de micro-organismes dans les cuves ouvertes).", strength: "4-6% ABV", fermentation: "Spontanée", color: "Blonde", flavor: "Bouche dominée par une certaine acidité avant que l'amertume ne vienne pointer le bout de son nez. Arômes de pomme et de vanille.")
beer3 = Drink.create!(name: "Oud Bruin", description: "Bière originaire de Flandres avec un vieillissement de plusieurs mois en cuve. Issue d'une fermentation mixte, elle développe un côté acide,", strength: "4-6% ABV", fermentation: "Mixte", color: "Brune", flavor: "Goût vineux et tannique avec des notes caramélisées ou sucrées très prononcées.")
beer4 = Drink.create!(name: "Belgian Gold Strong Ale", description: "Bière au caractère prononcé. Elle affiche des notes d'épices, de fruits et d'alcool bien appuyées sur le malt.", strength: ">9% ABV", fermentation: "Ale", color: "Blonde", flavor: "Fruitée, complexe, souvent forte en alcool mais accessible à de nombreux palais. Plus sec qu'une triple belge.")
beer5 = Drink.create!(name: "Triple Belge", description: "Complexe avec des épices modérées à importantes. Toujours effervescent, jamais astringent.", strength: "6-9% ABV", fermentation: "Ale", color: "Blonde", flavor: "Généreux phénols épicés, poivrés, parfois clous de girofle. Les esters rappellent souvent les agrûmes tels que les oranges.")
beer6 = Drink.create!(name: "Bière de garde", description: "Bière d'origine du Nord de la France. Bière forte en alcool et plutôt sèche en bouche. Ayant connu une garde plus longue pour apporter des saveurs.", strength: "4-6% ABV", fermentation: "Ale", color: "Ambrée", flavor: "Bière généralement plus sucrée et plus fine de part sa garde. Se porte généralement sur des notes céréalières avec des touches de malt, de pain, d'herbe, de houblon et de fruits.")
beer7 = Drink.create!(name: "Saison", strength: "4-6% ABV", fermentation: "Ale", color: "Blonde")
beer8 = Drink.create!(name: "Amber Ale", description: "Couleur allant de l'ambrée au cuivrée. La couleur et le goût varient suivant la quantité et la durée de torréfaction du malt.", strength: "4-6% ABV", fermentation: "Ale", color: "Ambrée", flavor: "Offre des arômes de caramel, de céréales, de sucre roux et pain d'épice.")
beer9 = Drink.create!(name: "Belgian Dark Strong Ale", description: "Complexe avec une riche douceur maltée. Alcool important et un piquant léger à modéré. Malt riche et fort.", strength: ">9% ABV", fermentation: "Ale", color: "Brune", flavor: "Arômes de caramel et de pain grillé. Notes de raisin sec, de prune, de cerise séchée, de figue ou de pruneau.")
beer10 = Drink.create!(name: "Stout", description: "Originaire d'Angleterre, la Stout utilise des malts torréfiés. Il suffit de 10% de ces malts dans un brassin pour créer une bière aussi noire et épaisse.", strength: "4-6% ABV", fermentation: "Ale", color: "Noire", flavor: "Bière offre des notes de torréfaction, de café, de cacao, de malt le tout à travers une bouche crémeuse et riche.")
beer11 = Drink.create!(name: "NEIPA", description: "New England IPA. Construite sur l'aromatique sans l'amertume. Peu filtrée pour obtenir une sensation juteuse en bouche. Version très fruitée et trouble de l'IPA.", strength: "4-6% ABV", fermentation: "Ale", color: "Blonde", flavor: "Issu de plusieurs houblonnages à cru massif afin de renforcer les parfums des houblons aromatiques.B ière qui s'apparente beaucoup à un jus de fruit de part ses puissants arômes fruités.")
beer12 = Drink.create!(name: "IPA", description: "Bière de caractère créée en Angleterre pur pouvoir résister au transport jusqu'aux colonies britanniques (vertus antiseptiques du houblon).", strength: "4-6% ABV", fermentation: "Ale", color: "Blonde", flavor: "Bière très houblonnée avec des arômes floraux, épicés et d'agrûmes")
beer13 = Drink.create!(name: "Barley Wine", description: "Egalement appelée 'vin d'orge'. Texture presque liquoreuse, jolie couleur cuivrée et une touche de caramel prononcée. A laisser mûrir plusieurs années dans leur bouteille avant de les consommer.", strength: ">9% ABV", fermentation: "Ale", color: "Ambrée", flavor: "On retrouve généralement des touches d'alcool, de caramel, de fruits secs, de pain grillé, de mélasse (mixture issue de la betterave sucrière ou de la canne à sucre).")

# PHOTOS BEERS
puts "Photos"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_blanche_verre_droit_hdnibr.jpg")
beer1.photos.attach(io: file, filename: "Witbier", content_type: "image/jpg")
beer1.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_gueuze_verre_%C3%A0_pied_gz7ipj.jpg")
beer2.photos.attach(io: file, filename: "Gueuze", content_type: "image/jpg")
beer2.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_Oud_Bruin_dans_un_verre_ballon_l6zx9n.jpg")
beer3.photos.attach(io: file, filename: "Oud Bruin", content_type: "image/jpg")
beer3.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_l%C3%A9g%C3%A8re_pinte_hejkxx.jpg")
beer4.photos.attach(io: file, filename: "Belgian Gold Strong Ale", content_type: "image/jpg")
beer4.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_ambr%C3%A9e_verre_tulipe_md63yg.jpg")
beer5.photos.attach(io: file, filename: "Triple Belge", content_type: "image/jpg")
beer5.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_de_garde_xo5zjb.jpg")
beer6.photos.attach(io: file, filename: "Bière de garde", content_type: "image/jpg")
beer6.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_de_garde_xo5zjb.jpg")
beer7.photos.attach(io: file, filename: "Saison", content_type: "image/jpg")
beer7.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_ambr%C3%A9e_verre_tulipe_md63yg.jpg")
beer8.photos.attach(io: file, filename: "Amber Ale", content_type: "image/jpg")
beer8.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_belgian_dark_strong_ale_quh7wg.jpg")
beer9.photos.attach(io: file, filename: "Belgian Dark Strong Ale", content_type: "image/jpg")
beer9.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_noire_stout_pinte_ksdpve.jpg")
beer10.photos.attach(io: file, filename: "Stout", content_type: "image/jpg")
beer10.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_l%C3%A9g%C3%A8re_pinte_hejkxx.jpg")
beer11.photos.attach(io: file, filename: "NEIPA", content_type: "image/jpg")
beer11.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_l%C3%A9g%C3%A8re_pinte_hejkxx.jpg")
beer12.photos.attach(io: file, filename: "IPA", content_type: "image/jpg")
beer12.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/bi%C3%A8re_barley_wine_xjp8n9.png")
beer13.photos.attach(io: file, filename: "Barley Wine", content_type: "image/jpg")
beer13.save


puts "wine"

# wine1 = Drink.create!(name: "Light", description: "Bière très rafraîchissante et désaltérante. Peu d'arômes, flaveurs courtes et faiblement sucrées.", strength: 4, fermentation: "Lager", color: "Blonde", flavor: "Maltée, céréale")
wine1 = Drink.create!(name: "Pauillac", grape: "Cabernet Sauvignon", description: "Massif et puissant", strength: "11,5%-12,5%", origin: "Bordeaux", color: "Vin rouge brique (vieux)", flavor: "Poivrons, cassis, mûre")
wine2 = Drink.create!(name: "Sauternes", grape: "Sauvignon", description: "Ample, grasse, onctueuse et puissante", origin: "Bordeaux", color: "Vin blanc liquoreux jaune or vif", flavor: "Bois (végétal), poire, poivron vert")
wine3 = Drink.create!(name: "Pommard", grape: "Pinot Noir", description: "Structure tendre, caractère charnu, richesse et puissance", origin: "Bourgogne", color: "Vin rouge concentré (jeune)", flavor: "▪ Odeurs animales : cuir ▪ Fruits rouges ▪ Sous-bois")
wine4 = Drink.create!(name: "Sancerre", grape: "Chardonnay", description: "Vin blanc sec aromatique, svelte, nerveux", origin: "Bourgogne", color: "Vin blanc sec jaune vert ou paille", flavor: "▪ Alimentaires : beurre frais, miel ▪ Minérales : pierre à fusil ▪ Fruits secs et confits : noisette")
wine5 = Drink.create!(name: "Riesling", grape: "Riesling", description: "Gras, ample et minéral", origin: "Alsace", color: "Vin blanc sec", flavor: "▪ Acacia, citron ▪ Fleurs blanches")
wine6 = Drink.create!(name: "Chinon", grape: "Cabernet Franc", description: "Corpulent, fondu et velouté", origin: "Val-de-Loire", color: "Vin rouge concentré", flavor: "Poivrons ▪ Fruits rouges")
wine7 = Drink.create!(name: "Muscadet", grape: "Melon Blanc", description: "Vif, léger et aromatique", origin: "Val-de-Loire", color: "Vin blanc sec jaune pâle", flavor: "▪ Fruits frais : citron ▪ Florales : chèvrefeuille")
wine8 = Drink.create!(name: "Savennières", grape: "Chenin Blanc", description: "Vin blanc riche et sec aux arômes de fruits blancs; miellé, rappellant la pomme compotée, le coing, les fleurs blanches", origin: "Val-de-Loire", color: "Vin blanc sec jaune paille", flavor: "Cire d’abeille ▪ Alimentaires : miel ▪ Florales : acacia ▪ Fruits secs et confits : abricot sec")
wine9 = Drink.create!(name: "Saint-Joseph", grape: "Syrah", description: "Belle amplitude, longeur moyenne, assez souple", origin: "Côtes-du-Rhone", color: "Vin rouge pourpre (jeune)", flavor: "▪ Empyreumatiques : poivre ▪ Fruits noirs ▪ Sous-Bois : Truffes")
wine10 = Drink.create!(name: "Condrieu", grape: "Viognier", description: "Vin blanc aromatique, riche, ample, sec", origin: "Côtes-du-Rhone", color: "Vin blanc sec jaune vert", flavor: "▪ Alimentaires : pain d’épice ▪ Fruits frais : abricots, pêche, mangue")
wine11 = Drink.create!(name: "Saint-Amour", grape: "Gamay", description: "Léger, fin et soyeux", origin: "Beaujolais", color: "Vin rouge concentré, à boire jeune", flavor: "Bonbon acidulé ▪ Fruits rouges")


# PHOTOS WINES
puts "Photos"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371347/vin_rouge_3_ifi2nq.jpg")
wine1.photos.attach(io: file, filename: "Pauillac", content_type: "image/jpg")
wine1.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371225/vin_blanc_4_eozuay.jpg")
wine2.photos.attach(io: file, filename: "Sauternes", content_type: "image/jpg")
wine2.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371220/vin_rouge_2_zrjzad.jpg")
wine3.photos.attach(io: file, filename: "Pommard", content_type: "image/jpg")
wine3.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine4.photos.attach(io: file, filename: "Sancerre", content_type: "image/jpg")
wine4.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine5.photos.attach(io: file, filename: "Riesling", content_type: "image/jpg")
wine5.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371217/vin_rouge_1_vk59cb.jpg")
wine6.photos.attach(io: file, filename: "Chinon", content_type: "image/jpg")
wine6.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine7.photos.attach(io: file, filename: "Muscadet", content_type: "image/jpg")
wine7.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine8.photos.attach(io: file, filename: "Savennières", content_type: "image/jpg")
wine8.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371206/vin_rouge_vtjiaj.jpg")
wine9.photos.attach(io: file, filename: "Saint-Joseph", content_type: "image/jpg")
wine9.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371199/vin_blanc_huosme.jpg")
wine10.photos.attach(io: file, filename: "Condrieu", content_type: "image/jpg")
wine10.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371206/vin_rouge_vtjiaj.jpg")
wine11.photos.attach(io: file, filename: "Saint-Amour", content_type: "image/jpg")
wine11.save


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
puts "Photos"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701376099/brie%20de%20meaux.jpg")
cheese1.photo.attach(io: file, filename: "Brie de Meaux jeune", content_type: "image/jpg")
cheese1.save
puts "brie1"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701376099/brie%20de%20meaux.jpg")
cheese2.photo.attach(io: file, filename: "Brie de Meaux vieux", content_type: "image/jpg")
cheese2.save
puts "neufchatel"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701376165/Neufchatel_exulse.jpg")
cheese3.photo.attach(io: file, filename: "Neufchatel jeune", content_type: "image/jpg")
cheese3.save
puts "neufchatel"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701376165/Neufchatel_exulse.jpg")
cheese4.photo.attach(io: file, filename: "Neufchatel vieux", content_type: "image/jpg")
cheese4.save
puts "reblochon"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371828/1701362185805xo0fnur9_ybufec.png")
cheese5.photo.attach(io: file, filename: "Reblochon", content_type: "image/jpg")
cheese5.save
puts "saint-nectaire"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701376360/_47e1f8ef-0520-4a4b-a59d-6b3b2ca3f114_bbrfmw.jpg")
cheese6.photo.attach(io: file, filename: "Saint-Nectaire", content_type: "image/jpg")
cheese6.save
puts "bleu"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701376360/Roquefort_odcuit.jpg")
cheese7.photo.attach(io: file, filename: "Bleu d'Auvergne", content_type: "image/jpg")
cheese7.save
puts "roquefort"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701376360/Roquefort_odcuit.jpg")
cheese8.photo.attach(io: file, filename: "Roquefort", content_type: "image/jpg")
cheese8.save


# MATCHES
puts "matches"

match1 = Match.create!(food_id: cheese1.id, drink_id: beer1.id)
match2 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)
match3 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)
match4 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)
match5 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)
match6 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)
match7 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)
match8 = Match.create!(food_id: cheese2.id, drink_id: beer2.id)

# PAIRINGS
puts "pairings"

pairing1 = Pairing.create!(food_id: cheese3.id, drink_id: beer3.id, user_id: user1.id)
pairing2 = Pairing.create!(food_id: cheese4.id, drink_id: beer4.id, user_id: user2.id)

# USER-CATEGORIES
# puts "user-categories"

# CATEGORIE-DRINKS
# puts "categorie-drinks"
