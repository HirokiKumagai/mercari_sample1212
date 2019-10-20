require 'rails_helper'

RSpec.describe "Signup", type: :request do
  describe "GET /signup" do
    # users/registrations/newにとび、deviseでユーザーを登録するためのページに飛ぶ。
    it 'signupページにアクセスできる' do
      get new_signup_path
      expect(response).to have_http_status(200)
    end

    it 'bodyに"新規会員登録"という記述があること' do
      get new_signup_path
      expect(response.body).to include('新規会員登録')
    end

    it '新規会員登録ページにアクセスできる' do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'loginを成功させる' do
    context 'loginをしてuserテーブルに情報を登録する' do
      login
      it 'return success status' do
        get root_path
        expect(response).to have_http_status(:success)
      end
    end
    # context 'without authentication' do
    #   it 'return fail status' do
    #     get '/pages'
    #     expect(response).to have_http_status(302)
    #   end
    # end
  end

end
