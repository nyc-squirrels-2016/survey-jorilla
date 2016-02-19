# get '/' do
#    redirect '/surveys'
# end

get '/surveys' do
  @surveys = Survey.all
  erb :index
end

get '/surveys/new' do
  erb :'survey/new'
end

post '/surveys' do
  @survey = Survey.create(params['survey'])
  redirect '/'
end

# get '/surveys/edit' do
#   @survey = Survey.find_by(params[:id])
#   erb :'surveys/:id/edit'
# end

# put '/surveys' do
#   @survey = Survey.update_all(params['edit'])
#   redirect '/'
# end

delete '/surveys' do
  @survey = Survey.find(params[:id])
  @survey.destroy

  redirect '/'
end


