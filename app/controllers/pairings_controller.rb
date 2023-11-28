class PairingsController < ApplicationController

  def create
    @pairing = Pairing.new(pairing_params)
    @pairing.user = current_user
    @pairing.save
    # redirect_to pairing_path(@pairing) : doit renvoyer à la page des pairings cad du "panier"
    # attention : pas de view encore créée pour le pairings controller
  end

end
