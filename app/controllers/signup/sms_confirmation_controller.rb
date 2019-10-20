class Signup::SmsConfirmationController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    session[:profile_tel] = profile_params[:tel]
    redirect_to new_signup_address_path
  end

  private
  def profile_params
    params.require(:profile).permit(:tel)
  end
end
