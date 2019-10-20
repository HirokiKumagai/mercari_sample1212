class Signup::SmsConfirmationController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    session[:profile_tel] = profile_params[:tel]
    # redirect_to 住所登録のパスへ
  end

  private
  def profile_params
    params.require(:profile).permit(:tel)
  end
end
