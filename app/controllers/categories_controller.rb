class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end


  # private

  # def categories_params
  #   params.require(:categories).permit(:name, :category_id, photos: [])
  # end


end
