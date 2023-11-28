class ProfileController < ApplicationController
  def show
    @user = current_user
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :user_id, photos: [])
  end
end
