10.times do
  user = User.create(
    name: Faker::Name.name,
    password: Faker::Internet.password
    )
end


10.times do
  Post.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user_id: User.all.sample.id
    )
end