class PairingsController < ApplicationController

  def new
    @pairing = Pairing.new
  end

  def create
    @pairing = Pairing.new(params[:id])
    @pairing.user = current_user
    @pairing.save
    redirect_to categories_path
  end


  private

  def pairings_params
    params.require(:pairings).permit(:pairing_id, :food_id, :drink_id, :user_id, photos: [])
  end

end

# redirect_to pairing_path(@pairing) : doit renvoyer à la page des pairings cad du "panier"
# attention : pas de view encore créée pour le pairings controller
