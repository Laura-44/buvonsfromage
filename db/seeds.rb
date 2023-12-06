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
beer14 = Drink.create!(name: "Bière aux fruits (cerise)", description: "En bouche, l’acidité et la sucrosité de la cerise sont les principales saveurs perçues. ", strength: "<4% ABV", fermentation: "Spontannée", color: "Fruits", flavor: "Au nez, on perçoit des arômes de fruits rouges, de cerise en particulier, ainsi que de fraises des bois plus confites.")
beer15 = Drink.create!(name: "Bière aux fruits (myrtille)", description: "Sur une base de bière blonde légère en alcool, on rajoute en quantité des myrtilles lors de la fermentation.", strength: "<4% ABV", fermentation: "Spontannée", color: "Fruits", flavor: "Profil organoleptique aussi fruité qu'acidulé.")
beer16 = Drink.create!(name: "Bière aux fruits (pêche)", description: "Il n’y a pas d’amertume mais une fine acidité persiste et nous conduit sur une finale sucrée avec une sensation de sucre candi et de pêche.", strength: "<4% ABV", fermentation: "Spontannée", color: "Fruits", flavor: "Infiniment gourmande, douce et acidulée, cette bière de fermentation spontanée à la robe orangée offre un nez est acide et sucré à la fois.")

# PHOTOS BEERS
puts "Photos"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_blanche_verre_droit_hdnibr.jpg")
beer1.photo.attach(io: file, filename: "Witbier", content_type: "image/jpg")
beer1.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_gueuze_verre_%C3%A0_pied_gz7ipj.jpg")
beer2.photo.attach(io: file, filename: "Gueuze", content_type: "image/jpg")
beer2.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_Oud_Bruin_dans_un_verre_ballon_l6zx9n.jpg")
beer3.photo.attach(io: file, filename: "Oud Bruin", content_type: "image/jpg")
beer3.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_l%C3%A9g%C3%A8re_pinte_hejkxx.jpg")
beer4.photo.attach(io: file, filename: "Belgian Gold Strong Ale", content_type: "image/jpg")
beer4.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_ambr%C3%A9e_verre_tulipe_md63yg.jpg")
beer5.photo.attach(io: file, filename: "Triple Belge", content_type: "image/jpg")
beer5.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_de_garde_xo5zjb.jpg")
beer6.photo.attach(io: file, filename: "Bière de garde", content_type: "image/jpg")
beer6.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_de_garde_xo5zjb.jpg")
beer7.photo.attach(io: file, filename: "Saison", content_type: "image/jpg")
beer7.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_ambr%C3%A9e_verre_tulipe_md63yg.jpg")
beer8.photo.attach(io: file, filename: "Amber Ale", content_type: "image/jpg")
beer8.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_belgian_dark_strong_ale_quh7wg.jpg")
beer9.photo.attach(io: file, filename: "Belgian Dark Strong Ale", content_type: "image/jpg")
beer9.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363620/Bi%C3%A8re_noire_stout_pinte_ksdpve.jpg")
beer10.photo.attach(io: file, filename: "Stout", content_type: "image/jpg")
beer10.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_l%C3%A9g%C3%A8re_pinte_hejkxx.jpg")
beer11.photo.attach(io: file, filename: "NEIPA", content_type: "image/jpg")
beer11.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/Bi%C3%A8re_blonde_l%C3%A9g%C3%A8re_pinte_hejkxx.jpg")
beer12.photo.attach(io: file, filename: "IPA", content_type: "image/jpg")
beer12.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701363621/bi%C3%A8re_barley_wine_xjp8n9.png")
beer13.photo.attach(io: file, filename: "Barley Wine", content_type: "image/jpg")
beer13.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701812893/Bi%C3%A8re_%C3%A0_la_cerie_zre8fd.jpg")
beer14.photo.attach(io: file, filename: "Bière aux fruits (cerise)", content_type: "image/jpg")
beer14.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701812950/Bi%C3%A8re_%C3%A0_la_myrtille_xm59ry.png")
beer15.photo.attach(io: file, filename: "Bière aux fruits (myrtille)", content_type: "image/jpg")
beer15.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701812891/Bi%C3%A8re_%C3%A0_la_p%C3%AAche_mktut0.jpg")
beer16.photo.attach(io: file, filename: "Bière aux fruits (pêche)", content_type: "image/jpg")
beer16.save



puts "wine"

# wine1 = Drink.create!(name: "Light", description: "Bière très rafraîchissante et désaltérante. Peu d'arômes, flaveurs courtes et faiblement sucrées.", strength: 4, fermentation: "Lager", color: "Blonde", flavor: "Maltée, céréale")
wine1 = Drink.create!(name: "Pauillac", grape: "Cabernet Sauvignon", description: "Massif et puissant", strength: "11,5%-12,5%", origin: "Bordeaux", color: "Vin rouge brique (vieux)", flavor: "Poivrons, cassis, mûre")
wine2 = Drink.create!(name: "Sauternes", grape: "Sauvignon", description: "Ample, grasse, onctueuse et puissante", strength: "12,5%-14%", origin: "Bordeaux", color: "Vin blanc liquoreux jaune or vif", flavor: "Bois (végétal), poire, poivron vert")
wine3 = Drink.create!(name: "Pommard", grape: "Pinot Noir", description: "Structure tendre, caractère charnu, richesse et puissance", strength: "12,5%-14%", origin: "Bourgogne", color: "Vin rouge concentré (jeune)", flavor: "▪ Odeurs animales : cuir ▪ Fruits rouges ▪ Sous-bois")
wine4 = Drink.create!(name: "Sancerre", grape: "Chardonnay", description: "Vin blanc sec aromatique, svelte, nerveux", strength: "12,5%-14%", origin: "Bourgogne", color: "Vin blanc sec jaune vert ou paille", flavor: "▪ Alimentaires : beurre frais, miel ▪ Minérales : pierre à fusil ▪ Fruits secs et confits : noisette")
wine5 = Drink.create!(name: "Riesling", grape: "Riesling", description: "Gras, ample et minéral", strength: "12,5%-14%", origin: "Alsace", color: "Vin blanc sec", flavor: "▪ Acacia, citron ▪ Fleurs blanches")
wine6 = Drink.create!(name: "Chinon", grape: "Cabernet Franc", description: "Corpulent, fondu et velouté", origin: "Val-de-Loire", strength: "12,5%-14%", color: "Vin rouge concentré", flavor: "Poivrons ▪ Fruits rouges")
wine7 = Drink.create!(name: "Muscadet", grape: "Melon Blanc", description: "Vif, léger et aromatique", origin: "Val-de-Loire", strength: "11,5%-12,5%", color: "Vin blanc sec jaune pâle", flavor: "▪ Fruits frais : citron ▪ Florales : chèvrefeuille")
wine8 = Drink.create!(name: "Savennières", grape: "Chenin Blanc", description: "Vin blanc riche et sec aux arômes de fruits blancs; miellé, rappellant la pomme compotée, le coing, les fleurs blanches", origin: "Val-de-Loire", strength: "12,5%-14%", color: "Vin blanc sec jaune paille", flavor: "Cire d’abeille ▪ Alimentaires : miel ▪ Florales : acacia ▪ Fruits secs et confits : abricot sec")
wine9 = Drink.create!(name: "Saint-Joseph", grape: "Syrah", description: "Belle amplitude, longeur moyenne, assez souple", origin: "Côtes-du-Rhone", strength: "12,5%-14%", color: "Vin rouge pourpre (jeune)", flavor: "▪ Empyreumatiques : poivre ▪ Fruits noirs ▪ Sous-Bois : Truffes")
wine10 = Drink.create!(name: "Condrieu", grape: "Viognier", description: "Vin blanc aromatique, riche, ample, sec", origin: "Côtes-du-Rhone", strength: "12,5%-14%", color: "Vin blanc sec jaune vert", flavor: "▪ Alimentaires : pain d’épice ▪ Fruits frais : abricots, pêche, mangue")
wine11 = Drink.create!(name: "Saint-Amour", grape: "Gamay", description: "Léger, fin et soyeux", origin: "Beaujolais", strength: "11,5%-12,5%", color: "Vin rouge concentré, à boire jeune", flavor: "Bonbon acidulé ▪ Fruits rouges")
wine12 = Drink.create!(name: "Rosé (pressurage direct)", grape: "Cinsault", description: "Léger, fin et soyeux", puissance: "11,5%-12,5%", origin: "Provence", color: "Robe claire, de couleur saumon", flavor: "Notes de fleurs et de melon")
wine13 = Drink.create!(name: "Rosé (saignée/macération)", grape: "Grolleau", description: "Onctueux, gras et suave", puissance: "11,5%-12,5%", origin: "Val-de-Loire", color: "Robe d'un rosé plus intense, grenadine", flavor: "Arômes de fruits rouges (fraise, framboise, groseille), rose, bonbon anglais, finale toute en fraîcheur")


# photo WINES
puts "photo"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371347/vin_rouge_3_ifi2nq.jpg")
wine1.photo.attach(io: file, filename: "Pauillac", content_type: "image/jpg")
wine1.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371225/vin_blanc_4_eozuay.jpg")
wine2.photo.attach(io: file, filename: "Sauternes", content_type: "image/jpg")
wine2.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371220/vin_rouge_2_zrjzad.jpg")
wine3.photo.attach(io: file, filename: "Pommard", content_type: "image/jpg")
wine3.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine4.photo.attach(io: file, filename: "Sancerre", content_type: "image/jpg")
wine4.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine5.photo.attach(io: file, filename: "Riesling", content_type: "image/jpg")
wine5.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371217/vin_rouge_1_vk59cb.jpg")
wine6.photo.attach(io: file, filename: "Chinon", content_type: "image/jpg")
wine6.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine7.photo.attach(io: file, filename: "Muscadet", content_type: "image/jpg")
wine7.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371216/vin_blanc_2_lyepyf.jpg")
wine8.photo.attach(io: file, filename: "Savennières", content_type: "image/jpg")
wine8.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371206/vin_rouge_vtjiaj.jpg")
wine9.photo.attach(io: file, filename: "Saint-Joseph", content_type: "image/jpg")
wine9.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371199/vin_blanc_huosme.jpg")
wine10.photo.attach(io: file, filename: "Condrieu", content_type: "image/jpg")
wine10.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701371206/vin_rouge_vtjiaj.jpg")
wine11.photo.attach(io: file, filename: "Saint-Amour", content_type: "image/jpg")
wine11.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701852341/Vin_rose_pressurage_direct_atxcsi.png")
wine12.photo.attach(io: file, filename: "Rosé pressurage direct", content_type: "image/jpg")
wine12.save
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701852351/Vin_rose_saignee_maceration_sizxz1.jpg")
wine13.photo.attach(io: file, filename: "Rosé saignée macération", content_type: "image/jpg")
wine13.save

# CATEGORIES
category1 = Category.create!(name: "Bière")
category2 = Category.create!(name: "Vin")
category3 = Category.create!(name: "Fromage")
puts "categories"

# CATEGORIE_DRINKS
puts "categorie_drinks"

categorie_drink1 = CategorieDrink.create!(name: "Blanche", category_id: category1.id, drink_id: beer1.id)
categorie_drink2 = CategorieDrink.create!(name: "Blonde", category_id: category1.id, drink_id: beer2.id)
categorie_drink3 = CategorieDrink.create!(name: "Brune", category_id: category1.id, drink_id: beer3.id)
categorie_drink4 = CategorieDrink.create!(name: "Blonde", category_id: category1.id, drink_id: beer4.id)
categorie_drink5 = CategorieDrink.create!(name: "Blonde", category_id: category1.id, drink_id: beer5.id)
categorie_drink6 = CategorieDrink.create!(name: "Ambrée", category_id: category1.id, drink_id: beer6.id)
categorie_drink7 = CategorieDrink.create!(name: "Blonde", category_id: category1.id, drink_id: beer7.id)
categorie_drink8 = CategorieDrink.create!(name: "Ambrée", category_id: category1.id, drink_id: beer8.id)
categorie_drink9 = CategorieDrink.create!(name: "Brune", category_id: category1.id, drink_id: beer9.id)
categorie_drink10 = CategorieDrink.create!(name: "Noire", category_id: category1.id, drink_id: beer10.id)
categorie_drink11 = CategorieDrink.create!(name: "Blonde", category_id: category1.id, drink_id: beer11.id)
categorie_drink12 = CategorieDrink.create!(name: "Blonde", category_id: category1.id, drink_id: beer12.id)
categorie_drink13 = CategorieDrink.create!(name: "Ambrée", category_id: category1.id, drink_id: beer13.id)
categorie_drink14 = CategorieDrink.create!(name: "Rouge", category_id: category2.id, drink_id: wine1.id)
categorie_drink15 = CategorieDrink.create!(name: "Blanc", category_id: category2.id, drink_id: wine2.id)
categorie_drink16 = CategorieDrink.create!(name: "Rouge", category_id: category2.id, drink_id: wine3.id)
categorie_drink17 = CategorieDrink.create!(name: "Blanc", category_id: category2.id, drink_id: wine4.id)
categorie_drink18 = CategorieDrink.create!(name: "Blanc", category_id: category2.id, drink_id: wine5.id)
categorie_drink19 = CategorieDrink.create!(name: "Rouge", category_id: category2.id, drink_id: wine6.id)
categorie_drink20 = CategorieDrink.create!(name: "Blanc", category_id: category2.id, drink_id: wine7.id)
categorie_drink21 = CategorieDrink.create!(name: "Blanc", category_id: category2.id, drink_id: wine8.id)
categorie_drink22 = CategorieDrink.create!(name: "Rouge", category_id: category2.id, drink_id: wine9.id)
categorie_drink23 = CategorieDrink.create!(name: "Blanc", category_id: category2.id, drink_id: wine10.id)
categorie_drink24 = CategorieDrink.create!(name: "Rouge", category_id: category2.id, drink_id: wine11.id)
categorie_drink25 = CategorieDrink.create!(name: "Fruits", category_id: category1.id, drink_id: beer14.id)
categorie_drink26 = CategorieDrink.create!(name: "Fruits", category_id: category1.id, drink_id: beer15.id)
categorie_drink27 = CategorieDrink.create!(name: "Fruits", category_id: category1.id, drink_id: beer16.id)
categorie_drink13 = CategorieDrink.create!(name: "Rosé", category_id: category2.id, drink_id: wine12.id)
categorie_drink13 = CategorieDrink.create!(name: "Rosé", category_id: category2.id, drink_id: wine13.id)
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
cheese9 = Food.create!(name: "Epoisse", family: "Fromage à pâte molle à croute lavée ", description: "Obligatoirement lavé à l'eau et au marc de Bourgogne", category_id: category3.id, strength: "Fort", milk: "Vache", aging: "Affiné", origin: "Côte-d'Or, Haute-Marne, Yonne")
cheese10 = Food.create!(name: "Munster", family: "Fromage à pâte molle à croute lavée ", description: "Lactique et végétal. ", category_id: category3.id, strength: "Standard", milk: "Vache", aging: "Jeune", origin: "Alsace")
cheese11 = Food.create!(name: "Maroilles", family: "Fromage à pâte molle à croute lavée ", description: "Lacté, légèrement salé présentant une acidité en pâte ainsi qu'une légère amertume.", category_id: category3.id, strength: "Fort", milk: "Vache", aging: "Jeune", origin: "Nord")
cheese12 = Food.create!(name: "Ossau-Iraty", family: "Fromage à pâte pressée non-cuite", description: "Saveur légèrement sucrée.", category_id: category3.id, strength: "Douc", milk: "Brebis", aging: "80 jours minimum", origin: "Pyrénées Atlantiques")
cheese13 = Food.create!(name: "Charolais", family: "Fromage de chèvre ", description: "Crémeux, ferme et lisse.", category_id: category3.id, strength: "Doux", milk: "Chèvre", aging: "Jeune", origin: "Allier, Loire, Rhône, Saône-et-Loire")
cheese14 = Food.create!(name: "Sainte-Maure-de-Touraine", family: "Fromage de chèvre ", description: "Acidulé et noisetté.", category_id: category3.id, strength: "Doux", milk: "Chèvre", aging: "Jeune", origin: "Indre-et-Loire")
cheese15 = Food.create!(name: "Saint-Marcellin", family: "Croûte naturelle", description: "Son goût franc présente une richesse aromatique équilibrée (goût fruité, de miel...)", category_id: category3.id, strength: "Doux", milk: "Vache", aging: "10 jours minimum", origin: "Isère")
cheese16 = Food.create!(name: "Saint Félicien", family: "Croûte naturelle", description: "Fromage doux et onctueux, double crème, au goût légèrement salé, noiseté et d'étable.", category_id: category3.id, strength: "Doux", milk: "Vache", aging: "28 jours minimum", origin: "Rhône, Isère")
cheese17 = Food.create!(name: "Comté", family: "Fromage à pâte pressée cuite ", description: "La palette des arômes du Comté compte près de 80 nuances : noisette, miel, abricot sec, cuir, amandes grillées, beurre frais etc.", category_id: category3.id, strength: "Standard", milk: "Vache", aging: "de 4 mois jusqu'à 36 mois", origin: "Doubs, Jura")
cheese18 = Food.create!(name: "Abondance", family: "Fromage à pâte pressée cuite ", description: "Palette aromatique variée en fonction de la durée d'affinage, de l'alimentation du troupeau et du savoir-faire du fromager", category_id: category3.id, strength: "Standard", milk: "Vache", aging: "100 jours minimum", origin: "Haute-Savoie")
cheese19 = Food.create!(name: "Beaufort", family: "Fromage à pâte pressée cuite ", description: "Saveur à la fois salée et douce, c'est un fromage typé sans pour autant être fort.", category_id: category3.id, strength: "Standard", milk: "Vache", aging: "5 mois minimum", origin: "Savoie, Haute-Savoie")

# photo CHEESES
puts "photo"
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
puts "epoisses"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776767/Epoisses_bdtnqw.jpg")
cheese9.photo.attach(io: file, filename: "Epoisses", content_type: "image/jpg")
cheese9.save
puts "munster"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776767/Munster_wgoznr.png")
cheese10.photo.attach(io: file, filename: "Munster", content_type: "image/jpg")
cheese10.save
puts "maroilles"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776768/Maroilles_c5wyft.png")
cheese11.photo.attach(io: file, filename: "Maroilles", content_type: "image/jpg")
cheese11.save
puts "ossau"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776767/Ossau-Iraty_snzphp.jpg")
cheese12.photo.attach(io: file, filename: "Ossau-Iraty", content_type: "image/jpg")
cheese12.save
puts "charolais"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776767/Charolais_eny7iz.png")
cheese13.photo.attach(io: file, filename: "Charolais", content_type: "image/jpg")
cheese13.save
puts "sainte maure"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776768/Sainte_Maure_de_Touraine_gkbdef.jpg")
cheese14.photo.attach(io: file, filename: "Sainte-Maure-de-Touraine", content_type: "image/jpg")
cheese14.save
puts "marcellin"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776768/Saint_Marcellin_m9ufnt.png")
cheese15.photo.attach(io: file, filename: "Saint-Marcellin", content_type: "image/jpg")
cheese15.save
puts "felicien"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776768/Saint_F%C3%A9licien_kf0i5i.png")
cheese16.photo.attach(io: file, filename: "Saint Félicien", content_type: "image/jpg")
cheese16.save
puts "comte"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776767/Comte_ux1fsl.jpg")
cheese17.photo.attach(io: file, filename: "Comté", content_type: "image/jpg")
cheese17.save
puts "abondance"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776767/Abondance_pvxjjm.png")
cheese18.photo.attach(io: file, filename: "Abondance", content_type: "image/jpg")
cheese18.save
puts "beaufort"
file = URI.open("https://res.cloudinary.com/dbpig7djd/image/upload/v1701776767/Beaufort_i28cac.png")
cheese19.photo.attach(io: file, filename: "Beaufort", content_type: "image/jpg")
cheese19.save

# MATCHES
puts "matches"

match1 = Match.create!(food_id: cheese1.id, drink_id: beer1.id)
match2 = Match.create!(food_id: cheese2.id, drink_id: beer1.id)
match3 = Match.create!(food_id: cheese3.id, drink_id: beer1.id)
match4 = Match.create!(food_id: cheese4.id, drink_id: beer1.id)
match5 = Match.create!(food_id: cheese13.id, drink_id: beer1.id)
match6 = Match.create!(food_id: cheese14.id, drink_id: beer1.id)
match7 = Match.create!(food_id: cheese15.id, drink_id: beer1.id)
match8 = Match.create!(food_id: cheese16.id, drink_id: beer1.id)
match9 = Match.create!(food_id: cheese1.id, drink_id: beer2.id)
match10 = Match.create!(food_id: cheese3.id, drink_id: beer2.id)
match11 = Match.create!(food_id: cheese9.id, drink_id: beer2.id)
match12 = Match.create!(food_id: cheese10.id, drink_id: beer2.id)
match13 = Match.create!(food_id: cheese11.id, drink_id: beer2.id)
match14 = Match.create!(food_id: cheese13.id, drink_id: beer2.id)
match15 = Match.create!(food_id: cheese14.id, drink_id: beer2.id)
match16 = Match.create!(food_id: cheese15.id, drink_id: beer2.id)
match17 = Match.create!(food_id: cheese16.id, drink_id: beer2.id)
match18 = Match.create!(food_id: cheese1.id, drink_id: beer3.id)
match19 = Match.create!(food_id: cheese3.id, drink_id: beer3.id)
match20 = Match.create!(food_id: cheese9.id, drink_id: beer3.id)
match21 = Match.create!(food_id: cheese10.id, drink_id: beer3.id)
match22 = Match.create!(food_id: cheese11.id, drink_id: beer3.id)
match23 = Match.create!(food_id: cheese13.id, drink_id: beer3.id)
match24 = Match.create!(food_id: cheese14.id, drink_id: beer3.id)
match25 = Match.create!(food_id: cheese15.id, drink_id: beer3.id)
match26 = Match.create!(food_id: cheese16.id, drink_id: beer3.id)
match27 = Match.create!(food_id: cheese2.id, drink_id: beer4.id)
match28 = Match.create!(food_id: cheese4.id, drink_id: beer4.id)
match29 = Match.create!(food_id: cheese17.id, drink_id: beer4.id)
match30 = Match.create!(food_id: cheese18.id, drink_id: beer4.id)
match31 = Match.create!(food_id: cheese19.id, drink_id: beer4.id)
match32 = Match.create!(food_id: cheese13.id, drink_id: beer4.id)
match33 = Match.create!(food_id: cheese2.id, drink_id: beer5.id)
match34 = Match.create!(food_id: cheese4.id, drink_id: beer5.id)
match35 = Match.create!(food_id: cheese17.id, drink_id: beer5.id)
match36 = Match.create!(food_id: cheese18.id, drink_id: beer5.id)
match37 = Match.create!(food_id: cheese19.id, drink_id: beer5.id)
match38 = Match.create!(food_id: cheese13.id, drink_id: beer5.id)
match39 = Match.create!(food_id: cheese2.id, drink_id: beer6.id)
match40 = Match.create!(food_id: cheese4.id, drink_id: beer6.id)
match41 = Match.create!(food_id: cheese6.id, drink_id: beer6.id)
match42 = Match.create!(food_id: cheese13.id, drink_id: beer6.id)
match43 = Match.create!(food_id: cheese9.id, drink_id: beer6.id)
match44 = Match.create!(food_id: cheese10.id, drink_id: beer6.id)
match45 = Match.create!(food_id: cheese11.id, drink_id: beer6.id)
match46 = Match.create!(food_id: cheese12.id, drink_id: beer6.id)
match47 = Match.create!(food_id: cheese17.id, drink_id: beer6.id)
match48 = Match.create!(food_id: cheese18.id, drink_id: beer6.id)
match49 = Match.create!(food_id: cheese19.id, drink_id: beer6.id)
match50= Match.create!(food_id: cheese13.id, drink_id: beer7.id)
match51= Match.create!(food_id: cheese14.id, drink_id: beer7.id)
match52= Match.create!(food_id: cheese15.id, drink_id: beer7.id)
match53= Match.create!(food_id: cheese16.id, drink_id: beer7.id)
match54= Match.create!(food_id: cheese1.id, drink_id: beer7.id)
match55= Match.create!(food_id: cheese3.id, drink_id: beer7.id)
match56= Match.create!(food_id: cheese17.id, drink_id: beer7.id)
match57= Match.create!(food_id: cheese18.id, drink_id: beer7.id)
match58= Match.create!(food_id: cheese19.id, drink_id: beer7.id)
match59= Match.create!(food_id: cheese2.id, drink_id: beer8.id)
match60= Match.create!(food_id: cheese4.id, drink_id: beer8.id)
match61= Match.create!(food_id: cheese9.id, drink_id: beer8.id)
match62= Match.create!(food_id: cheese10.id, drink_id: beer8.id)
match63= Match.create!(food_id: cheese11.id, drink_id: beer8.id)
match64= Match.create!(food_id: cheese6.id, drink_id: beer8.id)
match65= Match.create!(food_id: cheese12.id, drink_id: beer8.id)
match66= Match.create!(food_id: cheese17.id, drink_id: beer8.id)
match67= Match.create!(food_id: cheese18.id, drink_id: beer8.id)
match68= Match.create!(food_id: cheese19.id, drink_id: beer8.id)
match69= Match.create!(food_id: cheese17.id, drink_id: beer9.id)
match70= Match.create!(food_id: cheese18.id, drink_id: beer9.id)
match71= Match.create!(food_id: cheese19.id, drink_id: beer9.id)
match72= Match.create!(food_id: cheese7.id, drink_id: beer9.id)
match73= Match.create!(food_id: cheese8.id, drink_id: beer9.id)
match74= Match.create!(food_id: cheese13.id, drink_id: beer9.id)
match75= Match.create!(food_id: cheese7.id, drink_id: beer10.id)
match76= Match.create!(food_id: cheese8.id, drink_id: beer10.id)
match77= Match.create!(food_id: cheese13.id, drink_id: beer10.id)
match78= Match.create!(food_id: cheese5.id, drink_id: beer11.id)
match79= Match.create!(food_id: cheese6.id, drink_id: beer11.id)
match80= Match.create!(food_id: cheese12.id, drink_id: beer11.id)
match81= Match.create!(food_id: cheese13.id, drink_id: beer11.id)
match82= Match.create!(food_id: cheese14.id, drink_id: beer11.id)
match83= Match.create!(food_id: cheese7.id, drink_id: beer11.id)
match84= Match.create!(food_id: cheese8.id, drink_id: beer11.id)
match85= Match.create!(food_id: cheese1.id, drink_id: beer11.id)
match86= Match.create!(food_id: cheese3.id, drink_id: beer11.id)
match87= Match.create!(food_id: cheese5.id, drink_id: beer12.id)
match88= Match.create!(food_id: cheese6.id, drink_id: beer12.id)
match89= Match.create!(food_id: cheese12.id, drink_id: beer12.id)
match90= Match.create!(food_id: cheese13.id, drink_id: beer12.id)
match91= Match.create!(food_id: cheese14.id, drink_id: beer12.id)
match92= Match.create!(food_id: cheese7.id, drink_id: beer12.id)
match93= Match.create!(food_id: cheese8.id, drink_id: beer12.id)
match94= Match.create!(food_id: cheese1.id, drink_id: beer12.id)
match95= Match.create!(food_id: cheese3.id, drink_id: beer12.id)
match96= Match.create!(food_id: cheese7.id, drink_id: beer13.id)
match97= Match.create!(food_id: cheese8.id, drink_id: beer13.id)
match98= Match.create!(food_id: cheese17.id, drink_id: beer13.id)
match99= Match.create!(food_id: cheese18.id, drink_id: beer13.id)
match100= Match.create!(food_id: cheese19.id, drink_id: beer13.id)
match101= Match.create!(food_id: cheese13.id, drink_id: beer13.id)
match102 = Match.create!(food_id: cheese17.id, drink_id: wine1.id)
match103 = Match.create!(food_id: cheese18.id, drink_id: wine1.id)
match104 = Match.create!(food_id: cheese19.id, drink_id: wine1.id)
match105 = Match.create!(food_id: cheese9.id, drink_id: wine1.id)
match106 = Match.create!(food_id: cheese10.id, drink_id: wine1.id)
match107 = Match.create!(food_id: cheese11.id, drink_id: wine1.id)
match108 = Match.create!(food_id: cheese17.id, drink_id: wine2.id)
match109 = Match.create!(food_id: cheese18.id, drink_id: wine2.id)
match110 = Match.create!(food_id: cheese19.id, drink_id: wine2.id)
match111 = Match.create!(food_id: cheese9.id, drink_id: wine2.id)
match112 = Match.create!(food_id: cheese10.id, drink_id: wine2.id)
match113 = Match.create!(food_id: cheese11.id, drink_id: wine2.id)
match114 = Match.create!(food_id: cheese13.id, drink_id: wine2.id)
match115 = Match.create!(food_id: cheese14.id, drink_id: wine2.id)
match116 = Match.create!(food_id: cheese17.id, drink_id: wine3.id)
match117 = Match.create!(food_id: cheese18.id, drink_id: wine3.id)
match118 = Match.create!(food_id: cheese19.id, drink_id: wine3.id)
match119 = Match.create!(food_id: cheese9.id, drink_id: wine3.id)
match120 = Match.create!(food_id: cheese10.id, drink_id: wine3.id)
match121 = Match.create!(food_id: cheese11.id, drink_id: wine3.id)
match122 = Match.create!(food_id: cheese13.id, drink_id: wine4.id)
match123 = Match.create!(food_id: cheese14.id, drink_id: wine4.id)
match124 = Match.create!(food_id: cheese15.id, drink_id: wine4.id)
match125 = Match.create!(food_id: cheese16.id, drink_id: wine4.id)
match126 = Match.create!(food_id: cheese5.id, drink_id: wine5.id)
match127 = Match.create!(food_id: cheese6.id, drink_id: wine5.id)
match128 = Match.create!(food_id: cheese12.id, drink_id: wine5.id)
match129 = Match.create!(food_id: cheese13.id, drink_id: wine5.id)
match130 = Match.create!(food_id: cheese14.id, drink_id: wine5.id)
match131 = Match.create!(food_id: cheese5.id, drink_id: wine6.id)
match132 = Match.create!(food_id: cheese6.id, drink_id: wine6.id)
match133 = Match.create!(food_id: cheese12.id, drink_id: wine6.id)
match134 = Match.create!(food_id: cheese13.id, drink_id: wine6.id)
match135 = Match.create!(food_id: cheese14.id, drink_id: wine6.id)
match136 = Match.create!(food_id: cheese17.id, drink_id: wine6.id)
match137 = Match.create!(food_id: cheese18.id, drink_id: wine6.id)
match138 = Match.create!(food_id: cheese19.id, drink_id: wine6.id)
match139 = Match.create!(food_id: cheese13.id, drink_id: wine7.id)
match140 = Match.create!(food_id: cheese14.id, drink_id: wine7.id)
match141 = Match.create!(food_id: cheese15.id, drink_id: wine7.id)
match142 = Match.create!(food_id: cheese16.id, drink_id: wine7.id)
match143 = Match.create!(food_id: cheese5.id, drink_id: wine7.id)
match144 = Match.create!(food_id: cheese1.id, drink_id: wine8.id)
match145 = Match.create!(food_id: cheese2.id, drink_id: wine8.id)
match146 = Match.create!(food_id: cheese3.id, drink_id: wine8.id)
match147 = Match.create!(food_id: cheese4.id, drink_id: wine8.id)
match148 = Match.create!(food_id: cheese15.id, drink_id: wine8.id)
match149 = Match.create!(food_id: cheese16.id, drink_id: wine8.id)
match150 = Match.create!(food_id: cheese13.id, drink_id: wine8.id)
match151 = Match.create!(food_id: cheese14.id, drink_id: wine8.id)
match152 = Match.create!(food_id: cheese1.id, drink_id: wine9.id)
match153 = Match.create!(food_id: cheese2.id, drink_id: wine9.id)
match154 = Match.create!(food_id: cheese3.id, drink_id: wine9.id)
match155 = Match.create!(food_id: cheese4.id, drink_id: wine9.id)
match156 = Match.create!(food_id: cheese15.id, drink_id: wine9.id)
match157 = Match.create!(food_id: cheese16.id, drink_id: wine9.id)
match158 = Match.create!(food_id: cheese9.id, drink_id: wine9.id)
match159 = Match.create!(food_id: cheese10.id, drink_id: wine9.id)
match160 = Match.create!(food_id: cheese11.id, drink_id: wine9.id)
match160 = Match.create!(food_id: cheese1.id, drink_id: wine10.id)
match161 = Match.create!(food_id: cheese2.id, drink_id: wine10.id)
match162 = Match.create!(food_id: cheese3.id, drink_id: wine10.id)
match163 = Match.create!(food_id: cheese4.id, drink_id: wine10.id)
match164 = Match.create!(food_id: cheese15.id, drink_id: wine10.id)
match165 = Match.create!(food_id: cheese16.id, drink_id: wine10.id)
match166 = Match.create!(food_id: cheese13.id, drink_id: wine10.id)
match167 = Match.create!(food_id: cheese14.id, drink_id: wine10.id)
match168 = Match.create!(food_id: cheese17.id, drink_id: wine11.id)
match169 = Match.create!(food_id: cheese18.id, drink_id: wine11.id)
match170 = Match.create!(food_id: cheese19.id, drink_id: wine11.id)
match171 = Match.create!(food_id: cheese5.id, drink_id: wine11.id)
match172 = Match.create!(food_id: cheese6.id, drink_id: wine11.id)
match173 = Match.create!(food_id: cheese12.id, drink_id: wine11.id)
match174= Match.create!(food_id: cheese1.id, drink_id: beer14.id)
match175= Match.create!(food_id: cheese2.id, drink_id: beer14.id)
match176= Match.create!(food_id: cheese3.id, drink_id: beer14.id)
match177= Match.create!(food_id: cheese4.id, drink_id: beer14.id)
match178= Match.create!(food_id: cheese13.id, drink_id: beer14.id)
match179= Match.create!(food_id: cheese14.id, drink_id: beer14.id)
match180= Match.create!(food_id: cheese15.id, drink_id: beer14.id)
match181= Match.create!(food_id: cheese16.id, drink_id: beer14.id)
match182= Match.create!(food_id: cheese7.id, drink_id: beer14.id)
match183= Match.create!(food_id: cheese8.id, drink_id: beer14.id)
match184= Match.create!(food_id: cheese1.id, drink_id: beer15.id)
match185= Match.create!(food_id: cheese2.id, drink_id: beer15.id)
match186= Match.create!(food_id: cheese3.id, drink_id: beer15.id)
match187= Match.create!(food_id: cheese4.id, drink_id: beer15.id)
match188= Match.create!(food_id: cheese13.id, drink_id: beer15.id)
match189= Match.create!(food_id: cheese14.id, drink_id: beer15.id)
match190= Match.create!(food_id: cheese15.id, drink_id: beer15.id)
match191= Match.create!(food_id: cheese16.id, drink_id: beer15.id)
match192= Match.create!(food_id: cheese7.id, drink_id: beer15.id)
match193= Match.create!(food_id: cheese8.id, drink_id: beer15.id)
match194= Match.create!(food_id: cheese1.id, drink_id: beer16.id)
match195= Match.create!(food_id: cheese2.id, drink_id: beer16.id)
match196= Match.create!(food_id: cheese3.id, drink_id: beer16.id)
match197= Match.create!(food_id: cheese4.id, drink_id: beer16.id)
match198= Match.create!(food_id: cheese13.id, drink_id: beer16.id)
match199= Match.create!(food_id: cheese14.id, drink_id: beer16.id)
match200= Match.create!(food_id: cheese15.id, drink_id: beer16.id)
match201= Match.create!(food_id: cheese16.id, drink_id: beer16.id)
match202= Match.create!(food_id: cheese7.id, drink_id: beer16.id)
match203= Match.create!(food_id: cheese8.id, drink_id: beer16.id)
match204= Match.create!(food_id: cheese13.id, drink_id: wine12.id)
match205= Match.create!(food_id: cheese14.id, drink_id: wine12.id)
match206= Match.create!(food_id: cheese15.id, drink_id: wine12.id)
match207= Match.create!(food_id: cheese16.id, drink_id: wine12.id)
match208= Match.create!(food_id: cheese13.id, drink_id: wine13.id)
match209= Match.create!(food_id: cheese14.id, drink_id: wine13.id)
match210= Match.create!(food_id: cheese15.id, drink_id: wine13.id)
match211= Match.create!(food_id: cheese16.id, drink_id: wine13.id)



# PAIRINGS
puts "pairings"

pairing1 = Pairing.create!(food_id: cheese3.id, drink_id: beer3.id, user_id: user1.id)
pairing2 = Pairing.create!(food_id: cheese4.id, drink_id: beer4.id, user_id: user2.id)

# USER-CATEGORIES
# puts "user-categories"

# CATEGORIE-DRINKS
# puts "categorie-drinks"
