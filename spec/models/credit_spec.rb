require 'rails_helper'

RSpec.describe Credit, type: :model do
  it 'validationのテスト' do
    user = FactoryBot.create(:user)
    credit = FactoryBot.create(:credit, user_id: user.id)
    expect(credit).to be_valid
  end  

  it 'numberがないときのエラーvalidationのテスト' do
    user = FactoryBot.create(:user)
    credit = FactoryBot.build(:credit, user_id: user.id, number: nil )
    credit.valid?
    expect(credit.errors.messages[:number][0]).to include("can't be blank")
  end  

  it 'expiration_dateがないときのエラーvalidationのテスト' do
    user = FactoryBot.create(:user)
    credit = FactoryBot.build(:credit, user_id: user.id, expiration_date: nil )
    credit.valid?
    expect(credit.errors.messages[:expiration_date][0]).to include("can't be blank")
  end

  it 'secure_codeがないときのエラーvalidationのテスト' do
    user = FactoryBot.create(:user)
    credit = FactoryBot.build(:credit, user_id: user.id, secure_code: nil )
    credit.valid?
    expect(credit.errors.messages[:secure_code][0]).to include("can't be blank")
  end  
end
