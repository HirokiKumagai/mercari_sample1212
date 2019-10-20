class Signup::AddressController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render new_signup_address_path
    end 
  end

  private

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :prefecture, :city, :address_number, :building, :gender, :tel).merge(user_id: current_user.id)
    end
end
