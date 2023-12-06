class PairingsController < ApplicationController
  def index
    # @reservations = Reservation.all
    @pairings = Pairing.all
    @matches = Match.all

  end

  def new
    @pairing = Pairing.new
  end

  def create
    # @second_subcategory = Category.find(params[:pairing][:second_category_id])
    # raise
    @matches = Match.all
    @pairing = Pairing.new
    @category = Category.find(params[:pairing][:category_id])
    @second_category = Category.find(params[:pairing][:second_category_id])
    @pairing.drink = @drink = Drink.find(params[:pairing][:drink_id])
    @pairing.food = @food = Food.find(params[:pairing][:food_id])
    @pairing.user = current_user
    @matches.each do |match|
      if match.food == @pairing.food && match.drink == @pairing.drink
        @match = Match.find_by(food: @pairing.food, drink: @pairing.drink)
      else
        @match = false
      end
    end
    # raise
    @pairing.save!
    redirect_to categories_path({ second_category_id: @second_category.id, category_id: @category.id, drink: @pairing.drink })
  end

  private

  def pairings_params
    params.require(:pairing).permit(:food_id, :drink_id)
  end
end

# redirect_to pairing_path(@pairing) : doit renvoyer à la page des pairings cad du "panier"

# attention : pas de view encore créée pour le pairings controller
