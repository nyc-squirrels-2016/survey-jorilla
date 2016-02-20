# get '/questions/new' do
#   "Hello World"
# end

get '/surveys/:id/questions/new' do
  @survey = Survey.find(params[:id])
  erb :'/questions/new'
end

post '/surveys/:id/questions' do
  @survey = Survey.find(params[:id])
  @question = Question.create(params[:question])
  redirect "/surveys/#{@survey.id}/questions/#{@question.id}/choices/new"
end

get '/surveys/:survey_id/questions/:question_id/choices/new' do
  @survey = Survey.find(params[:survey_id])
  @question  = Question.find(params[:question_id])
  erb :'/choices/new'
end

post '/surveys/:survey_id/questions/:question_id/choices' do
  @survey = Survey.find(params[:survey_id])
  @question  = Question.find(params[:question_id])
  @choice = Choice.create(params[:choice])
  redirect "/surveys/#{@survey.id}/questions/new"
end

# delete '/questions' do
#   @
# end
