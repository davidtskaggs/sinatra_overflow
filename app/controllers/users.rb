get '/users/new' do
  @user = User.new
  erb :'users/new'
end


get '/users/:id' do
  @user = User.find_by(id: params[:id])

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
  @questions = Questions.all
  erb :index
end

post '/users/question' do
  @user = User.find_by(user: params[user.id])
  redirect '/'
end
