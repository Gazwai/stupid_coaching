# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @quote = params[:answer]

    @answer = if @quote.chars[-1] == '?'
                'Silly question, get dressed and go to work!'
              elsif @quote == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
