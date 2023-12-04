class PairingsController < ApplicationController
  def index
    # @reservations = Reservation.all
    @pairings = Pairing.all
  end

  def new
    @pairing = Pairing.new
  end

  def create
    # raise
    # @second_subcategory = Category.find(params[:pairing][:second_category_id])
    # raise
    @pairing = Pairing.new
    @category = Category.find(params[:pairing][:category_id])
    @second_category = Category.find(params[:pairing][:second_category_id])
    @pairing.drink = @drink = Drink.find(params[:pairing][:drink_id])
    @pairing.food = @food = Food.find(params[:pairing][:food_id])
    @pairing.user = current_user
    @pairing.save!
    redirect_to categories_path({ second_category_id: @second_category.id, category_id: @category.id })
  end

  private

  def pairings_params
    params.require(:pairing).permit(:food_id, :drink_id)
  end
end

# redirect_to pairing_path(@pairing) : doit renvoyer à la page des pairings cad du "panier"
# attention : pas de view encore créée pour le pairings controller
