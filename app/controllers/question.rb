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
  # binding.pry
  @choices_array = params[:choice]
  @choices_array.each do |text|
    Choice.create(choice_text: text, question_id: @question.id)
  end
  # @choice = Choice.create(choice_text: params[:choice_text], question_id: @question.id)
  redirect "/surveys/#{@survey.id}/questions/new"
end



# get '/surveys/:survey_id/questions/:question_id/choices/new' do
#   @survey = Survey.find(params[:survey_id])
#   @question  = Question.find(params[:question_id])
#   erb :'/choices/new'
# end

# post '/surveys/:survey_id/questions/:question_id/choices' do
#   @survey = Survey.find(params[:survey_id])
#   @question  = Question.find(params[:question_id])
#   @choice = Choice.create(params[:choice])
#   redirect "/surveys/#{@survey.id}/questions/new"
# end

# delete '/questions' do
#   @
# end
