get '/index' do
  redirect '/'
end

get '/' do
  @surveys = Survey.all.order(created_at: :desc)
  erb :index
end

get '/signup' do
  if logged_in?
    redirect '/'
  else
    erb :signup
  end
end

post '/signup' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    erb :_errors
  end
end

get '/login' do
  if logged_in?
    redirect '/'
  else
    erb :login
  end
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    erb :_errors
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
