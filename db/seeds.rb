# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Create groups
groups = Group.create([
    {name: 'Engenharia de software'},
    {name: 'Ciencia da computação'},
    {name: 'Sistemas de informação'},
    {name: 'Engenharia da computação'},
    {name: 'Projeto e arquitetura de software'},
    {name: 'AGES'}
])

#Create moderator user
user = User.create(
    name: Faker::StarWars.character,
    group_id: 3,
    role: 2
)

#Create regular users
50.times do
  user = User.create(
                 name: Faker::StarWars.character,
                 group_id: 3,
                 role: 1
  )
end

50.times do
  question = Question.create(
      title: Faker::StarWars.quote,
      body: Faker::StarWars.quote,
      user_id: User.pluck(:id).shuffle[0]
  )
end

200.times do
  answer = Answer.create(
      title: Faker::StarWars.quote,
      body: Faker::StarWars.quote,
      user_id: User.pluck(:id).shuffle[0],
      question_id: Question.pluck(:id).shuffle[0]
  )
end

