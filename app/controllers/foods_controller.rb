class FoodsController < ApplicationController
  def index
    @categories = Category.all
    @categorie_drinks = CategorieDrink.all
    if params[:category_id]
      @categorie_drinks = CategorieDrink.where(category_id: params[:category_id])
      render json: @categorie_drinks
      # redirect_to categories_path
    end
  end
end
