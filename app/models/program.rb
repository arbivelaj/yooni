class Program < ApplicationRecord
  belongs_to :university
  has_many :favourites
  has_many :users, through: :favourites
  has_many :applications
  has_many :reviews
end
