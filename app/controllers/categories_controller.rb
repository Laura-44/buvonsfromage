class CategoriesController < ApplicationController

    def index
      # raise

      # je dois recuperer tous les pairings => @user_parings
      @user_pairings = Pairing.where(user: current_user)

      @category = Category.find(params[:category_id])
      # si params second_category_id is empty ou nil alors on ira chercher autre chose
      # if @second_category = params[:second_category_id].nil?

      # else

      # end

      @second_category = params[:second_category_id].nil? ? nil : Category.find(params[:second_category_id])
      if @category.name == "Fromage"
        @choices = Category.find_by(name: "Bière").drinks

        # TODO enlver tous les drinks qui on un pairings (le drink en question a un pairing avec un fromage)

        # @choices = Category.find_by(name: "Wine").drinks
      else

        @choices = Category.find_by(name: "Fromage").foods

        # enlever tous les foods qui sont présents dans les pairings
        @choices = @choices.select do |choice|
          !choice.pairings.ids.any? do |pairing_id|
            @user_pairings.ids.include?(pairing_id)
          end
        end
        # TODO enlver tous les drinks qui on un pairings (le food en question a un pairing ave un drink de la category)
      end
  end


  private

  def categories_params
    params.require(:categories).permit(:name, :category_id, photos: [])
  end

end
