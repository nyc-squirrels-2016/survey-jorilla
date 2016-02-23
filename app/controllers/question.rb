get '/surveys/:id/questions/new' do
  @survey = Survey.find(params[:id])
  erb :'/questions/new'
end

post '/surveys/:id/questions' do
  @survey = Survey.find(params[:id])
  @question = Question.create(params[:question])
  @choices_array = params[:choice]
  @choices_array.each do |text|
    Choice.create(choice_text: text, question_id: @question.id, survey_id: @survey.id)
  end
  redirect "/surveys/#{@survey.id}/questions/new"
end
