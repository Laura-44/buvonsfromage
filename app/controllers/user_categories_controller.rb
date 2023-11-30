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
    @user_category = UserCategory.new
    existing_category = Category.find_by(name: params[:category])
    if existing_category
      existing_category.destroy
    else
      @user_category.category = Category.create(name: params[:category])
    end
    @user_category.name = params[:name]
    @user_category.user = current_user
    # @user_category.save
    # raise
    # redirect_to user_category_path(@user_category)
    if @user_category.save
      # Utilisez user_category_path avec l'ID de la nouvelle catégorie
      redirect_to user_category_path(@user_category)
    else
      render 'profiles/edit'
    end
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
