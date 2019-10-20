class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name,:last_name, :first_name_kana, :last_name_kana, :postal_code, :prefecture, :city, :address_number, :birthday, :user, presence: true 
end
