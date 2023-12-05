class CategoriesController < ApplicationController

    def index
      # je dois recuperer tous les pairings => @user_parings
      @user_pairings = Pairing.where(user: current_user)

      @category = Category.find(params[:category_id])
      @second_category = params[:second_category_id].nil? ? nil : Category.find(params[:second_category_id])

      if @category.name == "Fromage"
        @cheese = Food.first

        if @second_category.name == "Vin"
          @choices = @second_category.drinks
          pairing_supression
        else
          @choices = Category.find_by(name: "Bière").drinks
          pairing_supression
        end
        # TODO enlver tous les drinks qui on un pairings (le drink en question a un pairing avec un fromage)

      elsif @category.name == "Bière"
        @beer_category = @category.drinks.first
        @choices = Category.find_by(name: "Fromage").foods
        # enlever tous les foods qui sont présents dans les pairings
        # ici, la supression du pairing fonctionne : j'ai une bière, je cherche des fromages
        pairing_supression

      else
        @wine_category = @category.drinks.first
        @choices = Category.find_by(name: "Fromage").foods
        pairing_supression
        # TODO enlver tous les drinks qui on un pairings (le food en question a un pairing ave un drink de la category)
        # ici, la supression du pairing fonctionne : j'ai du vin, je cherche du fromage
      end
  end


  private

  def categories_params
    params.require(:categories).permit(:name, :category_id, :photo)
  end

  def pairing_supression
    @choices = @choices.select do |choice|
      !choice.pairings.ids.any? do |pairing_id|
        @user_pairings.ids.include?(pairing_id)
      end
    end
  end
end
