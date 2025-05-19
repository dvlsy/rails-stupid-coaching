class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    if @question.downcase.include?("time")
      @answer = "The current time is #{Time.now.strftime("%H:%M")}."
    else
      @answer = "I’m not sure, but here’s what I think…"
    end
  end
end
