class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query) if @query
  end

  private

  def coach_answer(your_message)
    if your_message.downcase == 'i am going to work right now!'

    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end
 