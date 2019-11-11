class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question[-1, 1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work right now!'
      @answer = 'Great!'
    else
      @answer = 'I do not really care, get dressed and go to work!'
    end
  end
end
