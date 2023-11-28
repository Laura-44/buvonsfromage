class ProfileController < ApplicationController
  def show
    @user = Current_user.find(params[:id])
    # @user = User.new
  end
end
