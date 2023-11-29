class CategoriesController < ApplicationController



  # je veux :

  def index
    @category = Category.find(4)
    if @category.name == "Cheese"
      @choices = Category.find_by(name: "Beer").drinks
      # @choices = Category.find_by(name: "Wine").drinks
    else
      @choices = Category.find_by(name: "Cheese").foods
    end






    # @choices.shuffle! if @choices.present?
    # if @category.nil?
    # end

  end

  # category_drinks = CategorieDrink.where(category = Category.where(name: "beer"))
    # récupérer une image correspondant au choix de catégorie de l'utiilisateur (qui se trouve dans food_controller : "quel produit avez-vous ?")
    # récupérer une image de la seed correspondant au choix de catégorie de l'utilisateur (dans food_controller : "avec quel produit voulez-vous l'associer ?")

    # Afficher les Categorys de la seed



    # avec show il faut recharger la page à chaque scroll sur la droite, et changer d'url à chaque fois
    # avec index on itère sur tous les Categoryes dans la seed et ensuite on recharge la page et on change d'url

# un utilisateur peut voir une sélection de produits qui Categoryent
# photos, description

  private

  def categories_params
    params.require(:categories).permit(:name, :category_id, photos: [])
  end

# SELECT category WHERE  categorie.name INCLUDE beer AND wine

end
