require 'rails_helper'

RSpec.describe "Sms_Confirmation", type: :request do
  describe "GET /signup/sms_confirmation/new" do
    # users/registrations/newにとび、deviseでユーザーを登録するためのページに飛ぶ。
    it 'signupページにアクセスできる' do
      get new_signup_sms_confirmation_path
      expect(response).to have_http_status(200)
    end
  end
end