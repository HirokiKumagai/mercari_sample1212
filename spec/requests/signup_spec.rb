require 'rails_helper'

RSpec.describe "Signup", type: :request do
  describe "GET /signup" do

    it 'signupページにアクセスできる' do
      get signup_new_path
      expect(response).to have_http_status(200)
      expect(response.body).to include('新規会員登録')
    end

    it 'bodyに"新規会員登録"という記述があること' do
      get signup_new_path
      expect(response).to have_http_status(200)
      expect(response.body).to include('新規会員登録')
    end

    it '新規会員登録ページにアクセスできる' do
      get signup_path
      expect(response).to have_http_status(200)
    end

    it 'ユーザー情報が保存できる' do
      get signup_path
      user = FactoryBot.create(:user)
      expect(user).to be_valid
    end
  end
end
