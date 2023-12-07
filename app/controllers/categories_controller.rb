class CategoriesController < ApplicationController

  def index
    # binding.pry
    @color = CategorieDrink.find_by(name: params[:categorie_drinks_name])
    @user_pairings = Pairing.where(user: current_user)
    @category = Category.find(params[:category_id])
    @second_category = params[:second_category_id].nil? ? nil : Category.find(params[:second_category_id])

    if @category.name == "Fromage"
      @category_value = Food.first

      if @second_category.name == "Vin"
        # @category_value = CategorieDrink.find_by(name: params[:categorie_drinks_name])
        # @drink_value = @category_value.name

        session[:wine_for_food] = Category.find_by(name: "Vin").foods.pluck(:id)
        @choices = Drink.where(id: session[:wine_for_food])
        @choices = @second_category.drinks
        pairing_supression
      else
        @choices = Category.find_by(name: "Bière").drinks
        # @category_value = CategorieDrink.find_by(name: params[:categorie_drinks_name])
        # @drink_value = @category_value.name
        pairing_supression
      end
      # TODO enlver tous les drinks qui on un pairings (le drink en question a un pairing avec un fromage)

    elsif @category.name == "Bière"
      if params[:drink].present?
        drink_name = Drink.find(params[:drink])
        @category_value = CategorieDrink.find_by(name: drink_name.color)
      else
        @category_value = CategorieDrink.find_by(name: params[:categorie_drinks_name])
      end

      @drink_value = @category_value.name
      session[:foods_for_beer] = Category.find_by(name: "Fromage").foods.pluck(:id) if session[:foods_for_beer].blank?
      @choices = Food.where(id: session[:foods_for_beer])
      pairing_supression

    elsif @category.name == "Vin"

      session[:foods_for_wine] = Category.find_by(name: "Fromage").foods.pluck(:id) if session[:foods_for_wine].blank?
      @choices = Food.where(id: session[:foods_for_wine])

      if params[:drink].present?
        # drink_name = Drink.find(params[:drink])
        @category_value = CategorieDrink.find_by(name: @color.name)
      else
        @category_value = CategorieDrink.find_by(name: params[:categorie_drinks_name])
      end
      pairing_supression
    end

  end

  def dislike
    choice = params[:class].constantize.find(params[:id])
    if choice == Food.find(params[:id])
      # raise
      session[:foods_for_wine].delete(params[:id].to_i) if session[:foods_for_wine]&.include?(params[:id].to_i)
      session[:foods_for_beer].delete(params[:id].to_i) if session[:foods_for_beer]&.include?(params[:id].to_i)
    else choice == Drink.find(params[:id])
      session[:beer_for_food].delete(params[:id].to_i) if session[:beer_for_food]&.include?(params[:id].to_i)
      session[:wine_for_food].delete(params[:id].to_i) if session[:wine_for_food]&.include?(params[:id].to_i)
    end
    # respond_to  do |format|
    # format.html { redirect_to categories_path, notice: 'Frometon was successfully destroyed.' }
    redirect_to categories_path
    # end
  end

  private

  def categories_params
    params.require(:categories).permit(:name, :category_id, :photo)
  end

  def pairing_supression
    @choices = @choices.select do |choice|
      !choice.pairings.ids.any? do |pairing_id|
        @user_pairings.ids.include?(pairing_id)
      end
    end
  end
end
