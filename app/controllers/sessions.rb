get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @error = "Invalid login, try again"
    erb :'sessions/new'
  end
end

# note: to avoid inadvertent GET prefetching, logout should
# really be either a POST or a DELETE, not a GET
# but to keep it simple today we will make it a GET:

get '/sessions/logout' do
  # this empties the session hash of all its contents,
  # yet the session hash still exists:
  session.clear
  redirect '/'
end
