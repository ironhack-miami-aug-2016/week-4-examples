# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ih = Project.create!(name: "Iron Hack", description: "")
le = Project.create!(name: "Leo", description: "")
Project.create!(name: "something", description: "")
Project.create!(name: "Wendy's", description: "")

ih.time_entries.create!(hours: "sdfsdf", minutes: "sdfsdfsd")

ih.time_entries.create!(hours: 1, minutes: 32)
ih.time_entries.create!(hours: 2, minutes: 30)
ih.time_entries.create!(hours: 3, minutes: 32)
ih.time_entries.create!(hours: 4, minutes: 32)
ih.time_entries.create!(hours: 5, minutes: 32)
ih.time_entries.create!(hours: 6, minutes: 30)
ih.time_entries.create!(hours: 7, minutes: 30)
ih.time_entries.create!(hours: 8, minutes: 30)

le.time_entries.create!(hours: 0, minutes: 0)
