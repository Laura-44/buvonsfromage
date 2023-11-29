class CategoriesController < ApplicationController

    def index
      @category = Category.find_by(params[:category_id])
      @second_category = Category.find_by(params[:second_category_id])
      if @category.name == "Cheese"
        @choices = Category.find_by(name: "Beer").drinks
        # @choices = Category.find_by(name: "Wine").drinks
      else
        @choices = Category.find_by(name: "Cheese").foods
      end
    # @choices.shuffle! if @choices.present?
    # if @category.nil?
    # end
  end


  private

  def categories_params
    params.require(:categories).permit(:name, :category_id, photos: [])
  end

end
