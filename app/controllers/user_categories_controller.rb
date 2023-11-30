class UserCategoriesController < ApplicationController
  # def create
  #   @user_category = UserCategory.new
  #   @user_category.category = Category.find_by(name: params[:category])
  #   @user_category.name = params[:name]
  #   @user_category.user = current_user
  #   @user_category.save
  #   redirect_to user_category_path(@user_category)
  # end

  def create
    @category = Category.find_by(name: params[:category])
    @user_category = UserCategory.find_by(category: @category, user: current_user, name: params[:name])
    if @user_category.nil?
      @user_category = UserCategory.create(name: params[:name], user: current_user, category: @category)
    else
      @user_category.destroy
    end
    # @user_category.save
    # raise
    # redirect_to user_category_path(@user_category)
    # Utilisez user_category_path avec l'ID de la nouvelle catégorie
    redirect_to edit_profiles_path
  end

  # def create
  #   @user_category = UserCategory.new(user_category_params)
  #   if @user_category.save
  #     flash[:notice] = "La catégorie utilisateur a été créée avec succès."
  #     redirect_to user_category_path(@user_category)
  #   else
  #     flash[:alert] = "Erreur lors de la création de la catégorie utilisateur."
  #     render :new
  #   end
  # end
end
