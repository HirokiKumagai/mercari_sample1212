class LoginController < ApplicationController
  def new
    @user = User.find(1)
  end
end
