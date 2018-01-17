class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
    # @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category }
  end

  def answer
    @answer = params[:answer]
    @question = params[:question]
    if @question == "I am going to work"
      return @answer = "Great!"
    elsif @question[-1] == "?"
      return @answer = "Silly question, get dressed and go to work!"
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
