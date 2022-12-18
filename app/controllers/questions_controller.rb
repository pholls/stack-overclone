class QuestionsController < ApplicationController
  before_action :authorized, only: [:new, :create, :edit, :update, :destroy]

  def index
    @questions = Question.all
  end

  def create
    @question = Question.create(question_params.merge(user_id: current_user.id))
    if @question.valid?
      redirect_to @question
    else
      render new_question_path, notice: 'error'
    end
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def show
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    if @question.valid?
      redirect_to @question
    else
      redirect_to @question, notice: 'error'
    end
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end

