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

    def search_modal(subject, level, tuition)
      q1 = "%#{subject}%"
      q2 = "%#{level}%"
      q3 = tuition

      data = [
        (subject.present?) ? self.where("subject ILIKE ?", q1) : [],
        (level.present?) ? self.where("level ILIKE ?", q2) : [],
        (not tuition.zero?) ? self.where("tuition = ?", q3) : [],
      ]

      data.flatten
    end


  end
end
