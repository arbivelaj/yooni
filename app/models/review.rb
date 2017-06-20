class Review < ApplicationRecord
  belongs_to :user
  belongs_to :program
  validates :content, length: { minimum: 20 }
end
