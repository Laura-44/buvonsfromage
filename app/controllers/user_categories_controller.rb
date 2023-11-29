class UserCategoriesController < ApplicationController
  # def create
  #   @user_category = UserCategory.new(user_category_params)
  #   @user_category.save
  #   redirect_to user_category_path(@user_category)
  # end

  def create
    @user_category = UserCategory.new(user_category_params)
    if @user_category.save
      flash[:notice] = "La catégorie utilisateur a été créée avec succès."
      redirect_to user_category_path(@user_category)
    else
      flash[:alert] = "Erreur lors de la création de la catégorie utilisateur."
      render :new
    end
  end

  private
end
