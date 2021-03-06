# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create([{name: "tranhuyhoang"}, {name: "mocuyenthanh"}])

10.times do
  Post.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, author_id: [1, 2].sample)
end
20.times do
  Comment.create(author: Faker::Name.name, body: Faker::Lorem.sentence, post_id: rand(1..10))
end

