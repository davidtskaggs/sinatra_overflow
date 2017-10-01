get '/' do
  erb :index
end

# THE BELOW BREAKS THE CODE
# get '/' do
#   redirect '/posts'
# end



# post '/posts/:id/vote' do
#   post = Post.find(params[:id])
#   post.votes.create(value: 1)
#   redirect "/posts"
# end

# delete '/posts/:id' do
#   # write logic for deleting posts here.
# end

# post '/posts' do
#   Post.create( title: params[:title],
#                username: Faker::Internet.free_email,
#                comment_count: rand(1000) )
#   redirect '/posts'
# end

# get '/post/:id' do
#   @post = Post.find(params[:id])
#   erb :post
# end
