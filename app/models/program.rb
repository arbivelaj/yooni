class Program < ApplicationRecord
  belongs_to :university
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
  has_many :applications , dependent: :destroy
  has_many :reviews, dependent: :destroy

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

    def search_city(c)
      cit = "%#{c}%"
      University.where("location ILIKE ?", cit).map {|university| university.programs }.flatten
    end

     def search_level(l)
      lev = "%#{l}%"
      self.where("level ILIKE ?", lev)
    end

    def search_tuition(t)
      self.where("tuition < ?", t)
    end

  end
end
