get '/users/new' do
  @user = User.new
  erb :'users/new'
end


get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @questions = Question.all
  redirect '/' unless @user.id == session[:user_id]

  erb :'users/show'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
  # error
    erb :'users/new'
  end
end

get '/users/question' do
  @questions = Question.all
  erb :index
end

post '/users/question' do
  # @user = User.find_by(user: params[user.id])
  @question = Question.new(title: params[:title],
    content: params[:content])
  @question.save
  redirect '/'
end

post '/users/answer' do
  @answer = Answer.new(content: params[:content],
    user_id: session[:user_id],
      question_id: params["question-id"])
  @answer.save
 redirect '/'
end

