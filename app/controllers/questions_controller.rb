class QuestionsController < ApplicationController
  def ask
  end
  def answer
    # creer une variable d'instance dans laquelle on va stocker la valeur de answer
    #recuper les imputs de answer  : clé answer et hash params
    @ask = params[:answer]

    #si ask = hello,
    if @ask == "i am going to work"
      @answer = "Great"
     elsif @ask.end_with?("?")
       @answer = "Silly question, get dressed and go to work!"
     elsif @ask == ""
       @answer = "I can't hear you"
     else
       @answer = "I don't care, get dressed and go to work!"
    end

  end
end


