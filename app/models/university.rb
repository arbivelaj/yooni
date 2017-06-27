class University < ApplicationRecord
  has_many :programs , dependent: :destroy
  validates :name, presence: true
  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  has_attachments :photos, maximum: 3
end
