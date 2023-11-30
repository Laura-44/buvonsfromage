class CategoriesController < ApplicationController

    def index
      # raise

      # je dois recuperer tous les pairings => @user_parings
      # @pairings = Pairing.all
      @category = Category.find(params[:category_id])
      # si params second_category_id is empty ou nil alors on ira chercher autre chose
      
      @second_category = params[:second_category_id].nil? ? nil : Category.find(params[:second_category_id])
      if @category.name == "Fromage"
        @choices = Category.find_by(name: "Bière").drinks
        # TODO enlver tous les drinks qui on un pairings (le drink en question a un pairing avec un fromage)
        # @choices = Category.find_by(name: "Wine").drinks
      else
        @choices = Category.find_by(name: "Fromage").foods
        # TODO enlver tous les drinks qui on un pairings (le food en question a un pairing ave un drink de la category)
      end
  end


  private

  def categories_params
    params.require(:categories).permit(:name, :category_id, photos: [])
  end

end
