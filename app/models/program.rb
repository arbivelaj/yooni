class Program < ApplicationRecord
  belongs_to :university
  has_many :favourites
  has_many :users, through: :favourites
  has_many :applications
  has_many :reviews

  class << self
    def search(query)
      q = "%#{query}%"
      self.where("title ILIKE ? OR scholarship ILIKE ? OR subject ILIKE ? OR level ILIKE ?", q, q, q, q)
    end
  end
end
