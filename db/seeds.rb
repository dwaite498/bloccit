require 'random_data'

50.times do
    Post.create!(
        title: "RandomData.random_sentence",
        body: "RandomData.random_paragraph"
        )
end
posts = Post.all
    
100.times do
   Comment.create!(
       post: posts.sample,
       body: RandomData.random_paragraph
       )
end

puts "#{Post.count}"
Post.find_or_create_by!(
    title: "Title Unique",
    body: "This is a body paragraph. It has the attributes of a paragraph. These attributes include a sentence structure, punctuation, and words made up of letters."
    )
puts "#{Post.count}"
    
Comment.find_or_create_by!(
    post: Post.find_by(title: "Title Unique"),
    body: "This is a second paragraph that also includes the aspects of a paragraph. It has multiple sentences and more than one punctuation mark!"
    )


puts "seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"