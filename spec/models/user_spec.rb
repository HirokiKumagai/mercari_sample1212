require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with name, email,password, password_confirmation" do
    user = User.new(
      nickname: "加藤純一",
      email: "kato@sample.com",
      password: "samplesample",
      password_confirmation: "samplesample"
      )
    expect(user).to be_valid
  end  
end
