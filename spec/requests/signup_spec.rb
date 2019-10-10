require 'rails_helper'

RSpec.describe "Signup", type: :request do
  describe "GET /signup" do
    it "authenticate_user!が発動する" do
      get signup_path
      expect(response).to have_http_status(200)
    end

    it 'bodyに"新規会員登録"という記述があること' do
      get signup_path
      expect(response.body).to include('新規会員登録')
    end

    it '新規会員登録ページにいってからユーザー登録ページに行けるか' do
      get signup_path
      expect(response.body).to include('新規会員登録')
      get new_register_registration_path
      expect(response).to have_http_status(200)
    end    
  end
end
