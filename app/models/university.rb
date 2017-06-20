class University < ApplicationRecord
  has_many :programs
  validates :name, presence: true
end
