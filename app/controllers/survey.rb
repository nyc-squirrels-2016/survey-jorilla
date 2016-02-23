# get '/' do
#    redirect '/surveys'
# end

get '/surveys' do
  # @surveys = Survey.all
  erb :index
end

get '/surveys/new' do
  erb :'/surveys/new'
end

post '/surveys' do
  @survey = Survey.create(params['survey'])
  redirect "/surveys/#{@survey.id}/questions/new"
end


get '/surveys/:id' do
  @questions = Question.where(survey_id: params[:id])
  if Answer.exists?(survey_id: params[:id])
    @answers = Answer.where(survey_id: params[:id])
    @choices = Choice.where(survey_id: params[:id])
    erb :'/surveys/results'
  else
    erb :'/surveys/show'
  end
end

# get '/surveys/edit' do
#   @survey = Survey.find_by(params[:id])
#   erb :'surveys/:id/edit'
# end

# put '/surveys' do
#   @survey = Survey.update_all(params['edit'])
#   redirect '/'
# end

# delete '/surveys' do
#   @survey = Survey.find(params[:id])
#   @survey.destroy

#   redirect '/'
# end


