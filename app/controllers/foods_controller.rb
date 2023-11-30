class FoodsController < ApplicationController
  def index
    # raise
    @categories = Category.all
    @categorie_drinks = CategorieDrink.all

    @second_categories = Category.all
    @second_categorie_drinks = CategorieDrink.all

    if params[:category_id]
      @categorie_drinks = CategorieDrink.where(category_id: params[:category_id])
      render json: @categorie_drinks
      # redirect_to categories_path
    end

    if params[:second_category_id]
      @second_categorie_drinks = CategorieDrink.where(category_id: params[:second_category_id])
      render json: @second_categorie_drinks
      # redirect_to categories_path
    end
  end

  def show
    @food = Food.find(params[:id])
  end
end
