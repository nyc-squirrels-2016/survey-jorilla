get '/users/index' do
  @user = User.find(session[:user_id])
  erb :'/users/index'
end
