class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :email, :password, :password_confirmation, presence: true
  validates :nickname, :email, uniqueness: { message: "has already been email" } 
  has_one :profile 
end
