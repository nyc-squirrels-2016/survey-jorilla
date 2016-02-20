# get '/questions/new' do
#   "Hello World"
# end


get '/surveys/:id/questions/new' do
  # binding.pry
  @survey = Survey.find(params[:id])
  erb :'/questions/new'
end

post '/questions' do
  @survey = Survey.find(params['question_text']['survey_id'])
  Question.new(params['question'])
  erb :'/questions/index'
end

# delete '/questions' do
#   @
# end
