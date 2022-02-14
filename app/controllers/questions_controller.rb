class QuestionsController < ApplicationController

  def ask

  end

  def answer
    if params[:question].include?("?")
      @question = params[:question]
      @coach = "Silly question, get dressed and go to work!"
    elsif params[:question] == "I am going to work"
      @question = params[:question]
      @coach = "Great!"
    else
      @question = params[:question]
      @coach = "I don't care, get dressed and go to work!"
    end
  end

end
