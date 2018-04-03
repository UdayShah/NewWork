# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

Skill.create!(skill_name: "java")
Skill.create!(skill_name: "c++")
Skill.create!(skill_name: "cobol")
Skill.create!(skill_name: "c#")
Skill.create!(skill_name: "c")
Skill.create!(skill_name: "visual basic")
Skill.create!(skill_name: "html")
Skill.create!(skill_name: "css")
Skill.create!(skill_name: "javascript")
Skill.create!(skill_name: "php")
Skill.create!(skill_name: "sql")
Skill.create!(skill_name: "ruby")
Skill.create!(skill_name: "node.js")
Skill.create!(skill_name: "python")
Skill.create!(skill_name: "teamwork")
Skill.create!(skill_name: "leadership")
Skill.create!(skill_name: "communication")
Skill.create!(skill_name: "time management")
Skill.create!(skill_name: "organization")

SkillLevel.create!(skill_level: 1)
SkillLevel.create!(skill_level: 2)
SkillLevel.create!(skill_level: 3)
SkillLevel.create!(skill_level: 4)
SkillLevel.create!(skill_level: 5)

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2000",
                 postal_code: "L1H7K4")

User.create!(first_name: "Ducky",
             last_name: "McDuckface",
             password: "QuackQuack",
             user_id: 1
             email: "ducky@quackbook.com",
             location_id: 1,
             profile_pic: "1_profile.jpg",
             resume: "1_resume.pdf",
             user_type: "w")
