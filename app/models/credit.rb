class Credit < ApplicationRecord
  belongs_to :user
  validates :number, :expiration_date, :secure_code, presence: true
end
