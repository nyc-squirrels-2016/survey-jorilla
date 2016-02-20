# get '/questions/new' do
#   "Hello World"
# end


get '/surveys/:id/questions/new' do
  # binding.pry
  @survey = Survey.find(params[:id])
  erb :'/questions/new'
end

post '/surveys/:id/questions' do
  @survey = Survey.find(params[:id])
  Question.new(params['question'])
  redirect "/surveys/#{@survey.id}/questions/new"
end

# delete '/questions' do
#   @
# end
