class University < ApplicationRecord
  has_many :programs
  validates :name, presence: true
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
