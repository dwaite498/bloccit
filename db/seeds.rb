require 'random_data'

puts "Beginning of file"

15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
    )
end


50.times do
  Post.create!(
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

10.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 8675309
  )
end

puts "seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
