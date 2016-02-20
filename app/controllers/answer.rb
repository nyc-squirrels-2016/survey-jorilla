post '/answers' do
  @answer = Answer.new(choice_id: params[:answer])
  @answer[:question_id] = @answer.choice.question.id
  @answer[:user_id] = session[:user_id]
  @answer[:survey_id] = @answer.question.survey.id
  @answer.save
  redirect '/'
end
