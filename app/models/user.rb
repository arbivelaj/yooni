class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :applications
  has_many :favourites
  has_many :programs
  has_many :favourite_programs, through: :favourites, source: :program
end
