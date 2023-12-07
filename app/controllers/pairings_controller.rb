class PairingsController < ApplicationController
  def index
    @pairings = Pairing.where(user: current_user)
    @matches = Match.all

    @lovematches = []
    @matches.each do |match|
      @pairings.each do |pairing|
        if match.food == pairing.food && match.drink == pairing.drink
          @lovematches << pairing
        end
      end
    end

  end

  def new
    @pairing = Pairing.new
  end

  def create
    sleep 1
    # @second_subcategory = Category.find(params[:pairing][:second_category_id])
    # raise
    @matches = Match.all
    @pairing = Pairing.new
    @category = Category.find(params[:pairing][:category_id])
    @second_category = Category.find(params[:pairing][:second_category_id])
    @pairing.drink = Drink.find(params[:pairing][:drink_id])
    @categorie_drinks_name = @pairing.drink.color
    @pairing.food = Food.find(params[:pairing][:food_id])
    @pairing.user = current_user
    @matches.each do |match|
      if match.food == @pairing.food && match.drink == @pairing.drink
        @match = true
      else
        @match = false
      end
    end
    @pairing.save!
    redirect_to categories_path({ second_category_id: @second_category.id, category_id: @category.id, categorie_drinks_name: @categorie_drinks_name})
  end
end

# redirect_to pairing_path(@pairing) : doit renvoyer à la page des pairings cad du "panier"

# attention : pas de view encore créée pour le pairings controller
