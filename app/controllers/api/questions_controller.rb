class Api::QuestionsController < ApplicationController

  before_action :require_login, only: [:create]

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:subject, :ask, :choices, :image, :difficulty)
  end
end
