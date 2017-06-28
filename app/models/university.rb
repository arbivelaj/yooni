class University < ApplicationRecord
  has_many :programs , dependent: :destroy
  validates :name, presence: true
  geocoded_by :location


  # after_validation :geocode, if: :location_changed?
  after_validation :geocode, if: Proc.new { |model|
    condition = model.latitude.blank? and model.longitude.blank?
    condition
  }

  has_attachments :photos, maximum: 3
end
