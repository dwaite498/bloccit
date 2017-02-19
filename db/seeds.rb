require 'random_data'

5.times do
  User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence
    )
  end
users = User.all

15.times do
   Topic.create!(
       name: RandomData.random_sentence,
       description: RandomData.random_paragraph
       )
end
topics = Topic.all

50.times do
    Post.create!(
        user: users.sample,
        topic: topics.sample,
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
        )
end
posts = Post.all
    
100.times do
   Comment.create!(
       post: posts.sample,
       body: RandomData.random_paragraph
       )
end

  admin = User.create!(
    name: "admin user",
    email: "admin@bloccit.com",
    password: "password",
    role: "admin"
    )
  
  member = User.create!(
    name: "member user",
    email: "member@bloccit.com",
    password: "password"
    )
    
  moderator = User.create!(
    name: "moderator",
    email: "moderator@bloccit.com",
    password: "password",
    role: "moderator"
    )

puts "seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
