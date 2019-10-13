require 'rails_helper'

RSpec.describe User, type: :model do

  it "nickname, email,password, password_confirmation を入れないと保存できない" do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end  

  it "nickname を入れないと保存できない" do
    user = FactoryBot.build(:user, nickname: nil)
    user.valid?
    expect(user.errors[:nickname]).to include("can't be blank")
  end 

  it "email を入れないと保存できない" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end 

  it "password を入れないと保存ができない" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end  

  it "password_confirmation を入れないと保存ができない" do
    user = FactoryBot.build(:user, password_confirmation: nil)
    user.valid?
    expect(user.errors[:password_confirmation]).to include("can't be blank")
  end  

  # it "重複したemailは無効になる" do
  #   user5 = User.new(
  #     nickname: "例題太朗",
  #     email: "kato@sample.com",
  #     password: "samplesample",
  #     password_confirmation: "samplesample"
  #     )
  #   user5.valid?
  #   expect(user5.errors[:email]).to include("has already been token")
  # end 

end
