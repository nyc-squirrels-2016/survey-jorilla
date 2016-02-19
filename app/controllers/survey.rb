get '/' do
  redirect '/surveys'
end

get '/surveys' do
  @surveys = Survey.all
  erb :index
end

get '/surveys/new' do
  erb :'survey/new'
end

post '/surveys' do
  @survey = Survey.create(params['survey'])
  redirect '/surveys'
end

get '/surveys/edit' do
  erb :'surveys/edit'
end

put '/surveys' do
  @survey = Survey.update_all(params['edit'])
  redirect '/surveys'
end

delete '/surveys' do
  @survey = Survey.find(params[:id])
  @survey.destroy

  redirect '/surveys'
end


