class ProfileController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @user = User.new
  end
end
