class FoodsController < ApplicationController
  def index
    # @foods = Food.all
    # @drinks = Drink.all
    @categories = Category.all
    # @categorie_drinks = CategorieDrink.all
  end
end
