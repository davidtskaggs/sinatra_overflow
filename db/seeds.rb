
# 10.times do
#   post = Post.create!( title: Faker::Company.catch_phrase,
#                username: Faker::Internet.user_name,
#                comment_count: rand(1000),
#                created_at: Time.now - rand(20000))

#   vote_count = rand(100)
#   vote_count.times do
#     post.votes.create!(value: 1)
#   end
# end

10.times do
  user = User.create!(
  email: Faker::Internet.free_email,
  password: Faker::Internet.password(10, 15)
  )
end

new_question = Question.create(title: "What is a coding bootcamp?", content: "Looking into coding bootcamps. I would like to know more about them. Currently in NYC", user_id: 1)
