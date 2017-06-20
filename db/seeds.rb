# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


university = University.create(name: "University 1")

Program.create(university: university, title: "lewagon", subject: "rails")
Program.create(university: university, title: "bootcamp", subject: "javascript")
Program.create(university: university, title: "rails", subject: "airbnb", level: "master")
