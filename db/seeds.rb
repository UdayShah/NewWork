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

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2001",
                 postal_code: "L1H7K4")

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2002",
                 postal_code: "L1H7K4")

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2003",
                 postal_code: "L1H7K4")

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2004",
                 postal_code: "L1H7K4")

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2005",
                 postal_code: "L1H7K4")

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2006",
                 postal_code: "L1H7K4")

Location.create!(province: "ON",
                 city: "Oshawa",
                 street: "Simcoe Street North",
                 building_number: "2007",
                 postal_code: "L1H7K4")

User.create!(first_name: "Uday",
             last_name: "Shah",
             password: "password",
             user_id: 1,
             email: "uday@newwork.com",
             location_id: 1,
             profile_pic: "1_profile.jpg",
             resume: "1_resume.pdf",
             user_type: "a")

User.create!(first_name: "Davy",
             last_name: "Grohlton",
             password: "password",
             user_id: 2,
             email: "davy@newwork.com",
             location_id: 2,
             profile_pic: "2_profile.jpg",
             resume: "2_resume.pdf",
             user_type: "a")

User.create!(first_name: "Cory",
             last_name: "Boasman",
             password: "password",
             user_id: 3,
             email: "cory@company.com",
             location_id: 3,
             profile_pic: "3_profile.jpg",
             resume: "3_resume.pdf",
             user_type: "e")

User.create!(first_name: "Cameron",
             last_name: "Fenton",
             password: "password",
             user_id: 4,
             email: "cameron@company.com",
             location_id: 4,
             profile_pic: "4_profile.jpg",
             resume: "4_resume.pdf",
             user_type: "e")

User.create!(first_name: "Gavin",
             last_name: "Harris",
             password: "password",
             user_id: 5,
             email: "gavin@email.com",
             location_id: 5,
             profile_pic: "5_profile.jpg",
             resume: "5_resume.pdf",
             user_type: "w")

User.create!(first_name: "John",
             last_name: "Smith",
             password: "password",
             user_id: 6,
             email: "john@newwork.com",
             location_id: 6,
             profile_pic: "6_profile.jpg",
             resume: "6_resume.pdf",
             user_type: "w")

Skillset.create!(user_id: 5,
                 skill_id: 3,
                 skill_level: 5)

Skillset.create!(user_id: 5,
                 skill_id: 18,
                 skill_level: 5)

Skillset.create!(user_id: 5,
                 skill_id: 9,
                 skill_level: 1)

Skillset.create!(user_id: 5,
                 skill_id: 11,
                 skill_level: 2)

Skillset.create!(user_id: 6,
                 skill_id: 1,
                 skill_level: 1)

Skillset.create!(user_id: 6,
                 skill_id: 4,
                 skill_level: 5)

Skillset.create!(user_id: 6,
                 skill_id: 9,
                 skill_level: 3)

Skillset.create!(user_id: 6,
                 skill_id: 12,
                 skill_level: 2)

Employer.create!(user_id: 3,
                 approved: true)

Employer.create!(user_id: 4,
                 approved: true)

Posting.create!(posting_id: 1,
                employer_id: 1,
                location_id: 7,
                job_name: "Mainframe Developer",
                job_description: "You work in COBOL for the rest of your life. There is no escape. $0.50/year salary. You can't another job. You must sign away your life. Mwahahahah",
                positions: 1)

Posting.create!(posting_id: 2,
                employer_id: 1,
                location_id: 8,
                job_name: "C# Developer",
                job_description: "Look for a dumbass that knows how to code in C# but not in Java. What a loser. $500/month salary.",
                positions: 1)

RequiredSkill.create!(posting_id: 1,
                      skill_id: 3,
                      skill_level: 5)

RequiredSkill.create!(posting_id: 2,
                      skill_id: 4,
                      skill_level: 5)
