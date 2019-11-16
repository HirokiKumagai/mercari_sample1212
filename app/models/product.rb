class Product < ApplicationRecord
  has_many :images #(CarrierWave使用時)
  has_many_attached :images #(Active::Storage使用時)
  has_one :dealing
  belongs_to :user
  belongs_to :category
  belongs_to :brand
end
