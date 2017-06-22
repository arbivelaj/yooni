class Program < ApplicationRecord
  belongs_to :university
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
  has_many :applications , dependent: :destroy
  has_many :reviews, dependent: :destroy

  class << self
    def search(query)
      if query.is_a? String
        self.search_modal(query, query, query, 0, 0)
      else
        self.search_modal("query", "query", "query", query, query)
      # q = "%#{query}%"
      # self.where("title ILIKE ? OR subject ILIKE ? OR level ILIKE ?", q, q, q)
    end
  end

  def search_modal(subject, level, location, tuit, scholarship)
    q1 = "%#{subject}%"
    q2 = "%#{level}%"
    q3 = "%#{location}%"
    q4 = tuit
    q5 = scholarship

    array_final = []
    tuition_array = []
    scholarship_array = []

    array_f = self.where("subject ILIKE ? AND level ILIKE ? ", q1, q2)
    array_g = University.where("location ILIKE ?", q3).map {|university| university.programs }.flatten
    array = array_f.select{|x| array_g.include?(x)}

    if q4 == 0
     array_final = array_f.select{|x| array_g.include?(x)}
   else
    tuition_array << self.where("tuition < ?", q4)
    tuition_array = tuition_array.flatten
    array_final << array.select{|k| tuition_array.include?(k)}

    if q5 == 0
      scholarship_array << self.where("scholarship > ?", q5)
      scholarship_array = scholarship_array.flatten
      array_final << array.select{|k| scholarship_array.include?(k)}
    end
  end


  array_final.flatten



      # data = [
      #   (subject.present?) ? self.where("subject ILIKE ?", q1) : [],
      #   (level.present?) ? self.where("level ILIKE ?", q2) : [],
      # #    (location.present?) ? University.where("location ILIKE ?", q3).map {|university| university.programs }.flatten : []
      # #       ]

      # array_f = self.where("subject ILIKE ? AND level ILIKE ? ", q1, q2)
      # array_g = University.where("location ILIKE ?", q3).map {|university| university.programs }.flatten

      # array = array_f.select{|x| array_g.include?(x)}
      # raise
      # if tuition =! 0
      #   return array_final = array.select{|x| tuition_array.include?(x)}
      # else
      #   return array
      # end

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

    def search_scholarship(s)
      self.where("scholarship < ?", s)
    end

  end
end
