require 'rails_helper'

RSpec.describe Profile, type: :model do
  it "profileが保存できる" do
    user = FactoryBot.create(:user)
    profile = FactoryBot.create(:profile, user_id: user.id)
    expect(profile).to be_valid
  end  

  it 'first_nameがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, first_name: nil)
    profile.valid?
    expect(profile.errors.messages[:first_name]).to include("can't be blank")
  end

  it 'last_nameがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, last_name: nil)
    profile.valid?
    expect(profile.errors.messages[:last_name]).to include("can't be blank")
  end

  it 'first_name_kanaがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, first_name_kana: nil)
    profile.valid?
    expect(profile.errors.messages[:first_name_kana]).to include("can't be blank")
  end

  it 'last_name_kanaがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, last_name_kana: nil)
    profile.valid?
    expect(profile.errors.messages[:last_name_kana]).to include("can't be blank")
  end

  it 'postal_codeがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, postal_code: nil)
    profile.valid?
    expect(profile.errors.messages[:postal_code]).to include("can't be blank")
  end

  it 'prefectureがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, prefecture: nil)
    profile.valid?
    expect(profile.errors.messages[:prefecture]).to include("can't be blank")
  end

  it 'cityがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, city: nil)
    profile.valid?
    expect(profile.errors.messages[:city]).to include("can't be blank")
  end

  it 'address_numberがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, address_number: nil)
    profile.valid?
    expect(profile.errors.messages[:address_number]).to include("can't be blank")
  end

  it 'birthdayがないとvalidateエラーがでる。' do
    user = FactoryBot.create(:user)
    profile = FactoryBot.build(:profile, user_id: user.id, birthday: nil)
    profile.valid?
    expect(profile.errors.messages[:birthday]).to include("can't be blank")
  end

end
