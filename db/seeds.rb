# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(first_name: "Ducky",
             last_name: "McDuckface",
             password: "QuackQuackMotherFucker",
             email: "ducky@quackbook.com")

Province.create!(province: "AB")
Province.create!(province: "BC")
Province.create!(province: "MB")
Province.create!(province: "NB")
Province.create!(province: "NL")
Province.create!(province: "NT")
Province.create!(province: "NS")
Province.create!(province: "NU")
Province.create!(province: "ON")
Province.create!(province: "PE")
Province.create!(province: "QC")
Province.create!(province: "SK")
Province.create!(province: "YT")
