class Signup::CreditController < ApplicationController
  def new
    @credit = Credit.new
  end

  def create
    @credit = Credit.new(credit_params)
    if @credit.save
      render "signup/credit/create"
    else
      render new_signup_credit_path
    end 
  end

  private

    def credit_params
      params.require(:credit).permit(:number, :expiration_date, :secure_code).merge(user_id: current_user.id)
    end
end
