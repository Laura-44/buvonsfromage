class FoodsController < ApplicationController
  def index
    @categories = Category.all
    # @sub_categories = CategorieDrink.find(params[:id]).name
  end
end
