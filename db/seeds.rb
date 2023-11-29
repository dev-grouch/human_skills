# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create some basic Skills
Skill.create(name: "Ruby")
Skill.create(name: "Ruby on Rails")
Skill.create(name: "HTML")
Skill.create(name: "CSS")
Skill.create(name: "JavaScript")
Skill.create(name: "React")
Skill.create(name: "Redux")
Skill.create(name: "SQL")
Skill.create(name: "Python")
Skill.create(name: "Django")
Skill.create(name: "C")
Skill.create(name: "C++")
Skill.create(name: "C#")
Skill.create(name: "Java")
Skill.create(name: "PHP")
Skill.create(name: "Swift")
Skill.create(name: "Kotlin")
Skill.create(name: "R")
Skill.create(name: "TypeScript")
Skill.create(name: "Angular")
Skill.create(name: "Vue.js")
Skill.create(name: "Node.js")
Skill.create(name: "Express.js")
Skill.create(name: "MongoDB")
Skill.create(name: "Firebase")
Skill.create(name: "GraphQL")
Skill.create(name: "Apollo")
Skill.create(name: "Git")
Skill.create(name: "GitHub")
Skill.create(name: "Heroku")
Skill.create(name: "Netlify")
Skill.create(name: "PostgreSQL")
Skill.create(name: "SQLite")
Skill.create(name: "Bootstrap")
Skill.create(name: "Material UI")
Skill.create(name: "Semantic UI")
Skill.create(name: "Tailwind CSS")
Skill.create(name: "Bulma")
Skill.create(name: "Figma")
Skill.create(name: "Adobe XD")
Skill.create(name: "Adobe Photoshop")
Skill.create(name: "Adobe Illustrator")
Skill.create(name: "Adobe InDesign")
Skill.create(name: "Adobe After Effects")
Skill.create(name: "Adobe Premiere Pro")
Skill.create(name: "Adobe Lightroom")


# create some basic Profiles using Faker
200.times do
  Profile.create(
    name: FFaker::Name.name,
    bio: FFaker::Lorem.paragraph,
    link: FFaker::Internet.http_url,
    skill_ids: Skill.all.sample(rand(3..17)).map(&:id)
  )
end

# create a basic User
User.create(
  email: "steve@grouch.dev",
  password: "password",
  password_confirmation: "password"
)
