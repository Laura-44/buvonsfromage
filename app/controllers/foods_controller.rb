class FoodsController < ApplicationController
  def index
    # raise
    @categories = Category.all
    @categorie_drinks = CategorieDrink.all

    @second_categories = Category.all
    @second_categorie_drinks = CategorieDrink.all



    # user_selections = current_user.user_categories
    # user_selections_array = []
    # user_selections.each do |user_selection|
    #   user_selections_array << user_selection.name
    # end
    # @user_categorie_drinks = []
    # @categorie_drinks.each do |categorie_drink|
    #   @user_categorie_drinks << categorie_drink unless user_selections_array.to_s.include? categorie_drink.name
    # end
    # raise
    # raise

    if params[:category_id]
      # @user_categorie_drink_choice = []
      # @user_categorie_drinks.each do |user_categorie_drink|
      #   @user_categorie_drink_choice << user_categorie_drink if user_categorie_drink.category_id == params[:category_id]
      # end
      @categorie_drinks = CategorieDrink.where.not(name: current_user.user_categories.pluck(:name)).where(category_id: params[:category_id]).select(:name).distinct
      render json: @categorie_drinks
      # redirect_to categories_path
    end
    if params[:second_category_id]
      @second_categorie_drinks = CategorieDrink.where(category_id: params[:second_category_id]).select(:name).distinct
      render json: @second_categorie_drinks
      # redirect_to categories_path
    end
    # raise
  end

  def show
    @food = Food.find(params[:id])
  end

  private

  def food_params
    params.require(:food).permit(photos: [])
  end
end
