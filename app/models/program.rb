class Program < ApplicationRecord
  belongs_to :university
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
  has_many :applications , dependent: :destroy
  has_many :reviews, dependent: :destroy

  class << self
    def search(query)
      if query.is_a? String
        self.search_string(query)


      end
    end



    def search_string(quer)
     q = "%#{quer}%"
     self.where("title ILIKE ? OR subject ILIKE ? OR level ILIKE ?", q, q, q)
   end

   def search_modal(subject, level, location, tuit, scholarship)
    query = self

    query = query.where("subject ILIKE ? ", "%#{subject}%") if subject.present?
    query = query.where("level ILIKE ? ", "%#{level}%") if level.present?
    query = query.where("tuition < ?", tuit) if tuit.is_a?(Integer) and tuit > 0
    query = query.where("scholarship > ?", scholarship) if scholarship.is_a?(Integer) and scholarship > 0

    array_final = query

    if location.present?
      programs = University.where("location ILIKE ?", "%#{location}%").map {|university| university.programs }.flatten
      array_final = array_final.select { |x| programs.include?(x)}
    end

    array_final



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
